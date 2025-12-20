@global_var_81de0 = external constant [54 x i8]
@global_var_8c833 = external constant [6 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_81dd6 = external constant [3 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_ccb9:
  %stack_var_-21 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_81dd6)
  %3 = bitcast ptr %stack_var_-21 to ptr
  call void @anon0(ptr nonnull %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_cd22, label %dec_label_pc_cd1d

dec_label_pc_cd1d:                                ; preds = %dec_label_pc_ccb9
  call void @__stack_chk_fail()
  br label %dec_label_pc_cd22

dec_label_pc_cd22:                                ; preds = %dec_label_pc_cd1d, %dec_label_pc_ccb9
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_cdb7:
  %0 = ptrtoint ptr %dataArray to i64
  %1 = add i64 %0, 2
  %2 = inttoptr i64 %1 to ptr
  %3 = load i8, ptr %2, align 1
  %4 = icmp eq i8 %3, 127
  br i1 %4, label %dec_label_pc_cdf6, label %dec_label_pc_cdd8

dec_label_pc_cdd8:                                ; preds = %dec_label_pc_cdb7
  %5 = zext i8 %3 to i32
  %6 = mul i32 %5, 16777216
  %sext = add i32 %6, 16777216
  %7 = udiv i32 %sext, 16777216
  %8 = trunc i32 %7 to i8
  call void @printHexCharLine(i8 %8)
  br label %dec_label_pc_ce05

dec_label_pc_cdf6:                                ; preds = %dec_label_pc_cdb7
  call void @printLine(ptr @global_var_81de0)
  br label %dec_label_pc_ce05

dec_label_pc_ce05:                                ; preds = %dec_label_pc_cdf6, %dec_label_pc_cdd8
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c833, i32 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


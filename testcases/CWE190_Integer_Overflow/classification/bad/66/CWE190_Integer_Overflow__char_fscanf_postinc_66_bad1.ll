@global_var_8ca93 = external constant [6 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_82036 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_cc01:
  %stack_var_-21 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_82036)
  %3 = bitcast ptr %stack_var_-21 to ptr
  call void @anon1(ptr nonnull %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_cc6a, label %dec_label_pc_cc65

dec_label_pc_cc65:                                ; preds = %dec_label_pc_cc01
  call void @__stack_chk_fail()
  br label %dec_label_pc_cc6a

dec_label_pc_cc6a:                                ; preds = %dec_label_pc_cc65, %dec_label_pc_cc01
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_cd43:
  %0 = ptrtoint ptr %dataArray to i64
  %1 = add i64 %0, 2
  %2 = inttoptr i64 %1 to ptr
  %3 = load i8, ptr %2, align 1
  %4 = add i8 %3, 1
  call void @printHexCharLine(i8 %4)
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8ca93, i32 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


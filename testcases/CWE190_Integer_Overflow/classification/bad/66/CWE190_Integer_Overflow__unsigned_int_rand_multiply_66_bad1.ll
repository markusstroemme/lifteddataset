@global_var_70d9e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_32b18:
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @rand()
  %2 = call i32 @rand()
  %3 = call i32 @rand()
  %4 = call i32 @rand()
  %5 = bitcast ptr %stack_var_-56 to ptr
  call void @anon1(ptr nonnull %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_32bab, label %dec_label_pc_32ba6

dec_label_pc_32ba6:                               ; preds = %dec_label_pc_32b18
  call void @__stack_chk_fail()
  br label %dec_label_pc_32bab

dec_label_pc_32bab:                               ; preds = %dec_label_pc_32ba6, %dec_label_pc_32b18
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_32cbb:
  %0 = ptrtoint ptr %dataArray to i64
  %sext = mul i64 %0, 4294967296
  %1 = ashr exact i64 %sext, 32
  %2 = add nsw i64 %1, 8
  %3 = inttoptr i64 %2 to ptr
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %dec_label_pc_32ced, label %dec_label_pc_32cdb

dec_label_pc_32cdb:                               ; preds = %dec_label_pc_32cbb
  %6 = mul i32 %4, 2
  call void @printUnsignedLine(i32 %6)
  br label %dec_label_pc_32ced

dec_label_pc_32ced:                               ; preds = %dec_label_pc_32cdb, %dec_label_pc_32cbb
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


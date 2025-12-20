@global_var_72460 = external constant [4 x i8]
@global_var_76ce9 = external constant [5 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_39f4c:
  %stack_var_-48 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-48, align 8
  %1 = load ptr, ptr @global_var_a5080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_72460, ptr nonnull %stack_var_-48)
  %3 = load i64, ptr %stack_var_-48, align 8
  %4 = icmp slt i64 %3, 1
  br i1 %4, label %dec_label_pc_39fbf, label %dec_label_pc_39fa8

dec_label_pc_39fa8:                               ; preds = %dec_label_pc_39f4c
  %5 = mul i64 %3, 2
  call void @printLongLongLine(i64 %5)
  br label %dec_label_pc_39fbf

dec_label_pc_39fbf:                               ; preds = %dec_label_pc_39fa8, %dec_label_pc_39f4c
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_39fd4, label %dec_label_pc_39fcf

dec_label_pc_39fcf:                               ; preds = %dec_label_pc_39fbf
  call void @__stack_chk_fail()
  br label %dec_label_pc_39fd4

dec_label_pc_39fd4:                               ; preds = %dec_label_pc_39fcf, %dec_label_pc_39fbf
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_5a132:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76ce9, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


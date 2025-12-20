@global_var_68ae0 = external constant [3 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_9c028 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_19097:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = load i32, ptr @global_var_9c028, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_19105, label %dec_label_pc_190e5

dec_label_pc_190e5:                               ; preds = %dec_label_pc_19097
  %3 = load ptr, ptr @global_var_9c070, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_68ae0, ptr nonnull %stack_var_-24)
  %.pr = load i32, ptr @global_var_9c028, align 4
  %5 = icmp eq i32 %.pr, 0
  br i1 %5, label %dec_label_pc_19105, label %dec_label_pc_190ef

dec_label_pc_190ef:                               ; preds = %dec_label_pc_190e5
  %6 = load i32, ptr %stack_var_-24, align 4
  %7 = mul i32 %6, %6
  call void @printUnsignedLine(i32 %7)
  br label %dec_label_pc_19105

dec_label_pc_19105:                               ; preds = %dec_label_pc_19097, %dec_label_pc_190ef, %dec_label_pc_190e5
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_1911a, label %dec_label_pc_19115

dec_label_pc_19115:                               ; preds = %dec_label_pc_19105
  call void @__stack_chk_fail()
  br label %dec_label_pc_1911a

dec_label_pc_1911a:                               ; preds = %dec_label_pc_19115, %dec_label_pc_19105
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


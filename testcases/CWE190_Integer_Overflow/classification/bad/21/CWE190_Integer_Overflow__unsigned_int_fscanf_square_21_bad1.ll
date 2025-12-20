@global_var_68ef8 = external constant [3 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_9c128 = external local_unnamed_addr global i32

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_1b2c8:
  %0 = load i32, ptr @global_var_9c128, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_1b2f4, label %dec_label_pc_1b2e1

dec_label_pc_1b2e1:                               ; preds = %dec_label_pc_1b2c8
  %2 = mul i32 %data, %data
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_1b2f4

dec_label_pc_1b2f4:                               ; preds = %dec_label_pc_1b2e1, %dec_label_pc_1b2c8
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_1b2f7:
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-20, align 4
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_68ef8, ptr nonnull %stack_var_-20)
  store i32 1, ptr @global_var_9c128, align 4
  %3 = load i32, ptr %stack_var_-20, align 4
  call void @anon1(i32 %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_1b364, label %dec_label_pc_1b35f

dec_label_pc_1b35f:                               ; preds = %dec_label_pc_1b2f7
  call void @__stack_chk_fail()
  br label %dec_label_pc_1b364

dec_label_pc_1b364:                               ; preds = %dec_label_pc_1b35f, %dec_label_pc_1b2f7
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


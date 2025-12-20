@global_var_69299 = external constant [3 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_1cdc4:
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-20, align 4
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_69299, ptr nonnull %stack_var_-20)
  call void @anon1(ptr nonnull %stack_var_-20)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_1ce29, label %dec_label_pc_1ce24

dec_label_pc_1ce24:                               ; preds = %dec_label_pc_1cdc4
  call void @__stack_chk_fail()
  br label %dec_label_pc_1ce29

dec_label_pc_1ce29:                               ; preds = %dec_label_pc_1ce24, %dec_label_pc_1cdc4
  ret void
}

define void @anon1(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_1cefd:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = mul i32 %2, %2
  call void @printUnsignedLine(i32 %3)
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


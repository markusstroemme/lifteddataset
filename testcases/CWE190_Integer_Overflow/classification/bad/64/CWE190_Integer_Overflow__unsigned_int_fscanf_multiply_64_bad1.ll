@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_68886 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_17ebb:
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-20, align 4
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_68886)
  %3 = bitcast ptr %stack_var_-20 to ptr
  call void @anon1(ptr nonnull %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_17f20, label %dec_label_pc_17f1b

dec_label_pc_17f1b:                               ; preds = %dec_label_pc_17ebb
  call void @__stack_chk_fail()
  br label %dec_label_pc_17f20

dec_label_pc_17f20:                               ; preds = %dec_label_pc_17f1b, %dec_label_pc_17ebb
  ret void
}

define void @anon1(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_17ff4:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_1802d, label %dec_label_pc_1801b

dec_label_pc_1801b:                               ; preds = %dec_label_pc_17ff4
  %4 = mul i32 %2, 2
  call void @printUnsignedLine(i32 %4)
  br label %dec_label_pc_1802d

dec_label_pc_1802d:                               ; preds = %dec_label_pc_1801b, %dec_label_pc_17ff4
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


@global_var_68bd8 = external constant [3 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr

define i32 @staticReturnsTrue.464() local_unnamed_addr {
dec_label_pc_198c9:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_198e7:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = call i32 @staticReturnsTrue.464()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_19939, label %dec_label_pc_19917

dec_label_pc_19917:                               ; preds = %dec_label_pc_198e7
  %3 = load ptr, ptr @global_var_9c070, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_68bd8, ptr nonnull %stack_var_-24)
  br label %dec_label_pc_19939

dec_label_pc_19939:                               ; preds = %dec_label_pc_19917, %dec_label_pc_198e7
  %5 = call i32 @staticReturnsTrue.464()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_1995d, label %dec_label_pc_19947

dec_label_pc_19947:                               ; preds = %dec_label_pc_19939
  %7 = load i32, ptr %stack_var_-24, align 4
  %8 = mul i32 %7, %7
  call void @printUnsignedLine(i32 %8)
  br label %dec_label_pc_1995d

dec_label_pc_1995d:                               ; preds = %dec_label_pc_19947, %dec_label_pc_19939
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_19972, label %dec_label_pc_1996d

dec_label_pc_1996d:                               ; preds = %dec_label_pc_1995d
  call void @__stack_chk_fail()
  br label %dec_label_pc_19972

dec_label_pc_19972:                               ; preds = %dec_label_pc_1996d, %dec_label_pc_1995d
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


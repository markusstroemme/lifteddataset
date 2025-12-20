@global_var_68040 = external constant [3 x i8]
@global_var_68058 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_13d7f:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_68040, ptr nonnull %stack_var_-24)
  %3 = load i32, ptr %stack_var_-24, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %dec_label_pc_13e1a, label %dec_label_pc_13ded

dec_label_pc_13ded:                               ; preds = %dec_label_pc_13d7f
  %5 = icmp ult i32 %3, 2147483647
  br i1 %5, label %dec_label_pc_13df7, label %dec_label_pc_13e0b

dec_label_pc_13df7:                               ; preds = %dec_label_pc_13ded
  %6 = mul i32 %3, 2
  call void @printUnsignedLine(i32 %6)
  br label %dec_label_pc_13e1a

dec_label_pc_13e0b:                               ; preds = %dec_label_pc_13ded
  call void @printLine(ptr @global_var_68058)
  br label %dec_label_pc_13e1a

dec_label_pc_13e1a:                               ; preds = %dec_label_pc_13e0b, %dec_label_pc_13df7, %dec_label_pc_13d7f
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_13e2f, label %dec_label_pc_13e2a

dec_label_pc_13e2a:                               ; preds = %dec_label_pc_13e1a
  call void @__stack_chk_fail()
  br label %dec_label_pc_13e2f

dec_label_pc_13e2f:                               ; preds = %dec_label_pc_13e2a, %dec_label_pc_13e1a
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_54bd7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_54bfa, label %dec_label_pc_54bee

dec_label_pc_54bee:                               ; preds = %dec_label_pc_54bd7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_54bfa

dec_label_pc_54bfa:                               ; preds = %dec_label_pc_54bee, %dec_label_pc_54bd7
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


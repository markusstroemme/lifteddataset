@global_var_68a90 = external constant [3 x i8]
@global_var_68aa8 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_18f26:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_68a90, ptr nonnull %stack_var_-24)
  %3 = load i32, ptr %stack_var_-24, align 4
  %.off = add i32 %3, 65534
  %4 = icmp ugt i32 %.off, 131068
  br i1 %4, label %dec_label_pc_18fa9, label %dec_label_pc_18f90

dec_label_pc_18f90:                               ; preds = %dec_label_pc_18f26
  %5 = mul i32 %3, %3
  call void @printUnsignedLine(i32 %5)
  br label %dec_label_pc_18fb8

dec_label_pc_18fa9:                               ; preds = %dec_label_pc_18f26
  call void @printLine(ptr @global_var_68aa8)
  br label %dec_label_pc_18fb8

dec_label_pc_18fb8:                               ; preds = %dec_label_pc_18fa9, %dec_label_pc_18f90
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_18fcd, label %dec_label_pc_18fc8

dec_label_pc_18fc8:                               ; preds = %dec_label_pc_18fb8
  call void @__stack_chk_fail()
  br label %dec_label_pc_18fcd

dec_label_pc_18fcd:                               ; preds = %dec_label_pc_18fc8, %dec_label_pc_18fb8
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


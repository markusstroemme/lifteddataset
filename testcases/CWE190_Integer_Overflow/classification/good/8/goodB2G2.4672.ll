@global_var_68bd8 = external constant [3 x i8]
@global_var_68bf0 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr

define i32 @staticReturnsTrue.464() local_unnamed_addr {
dec_label_pc_198c9:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_19a38:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = call i32 @staticReturnsTrue.464()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_19a8a, label %dec_label_pc_19a68

dec_label_pc_19a68:                               ; preds = %dec_label_pc_19a38
  %3 = load ptr, ptr @global_var_9c070, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_68bd8, ptr nonnull %stack_var_-24)
  br label %dec_label_pc_19a8a

dec_label_pc_19a8a:                               ; preds = %dec_label_pc_19a68, %dec_label_pc_19a38
  %5 = call i32 @staticReturnsTrue.464()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_19ad4, label %dec_label_pc_19a98

dec_label_pc_19a98:                               ; preds = %dec_label_pc_19a8a
  %7 = load i32, ptr %stack_var_-24, align 4
  %.off = add i32 %7, 65534
  %8 = icmp ugt i32 %.off, 131068
  br i1 %8, label %dec_label_pc_19ac5, label %dec_label_pc_19aac

dec_label_pc_19aac:                               ; preds = %dec_label_pc_19a98
  %9 = mul i32 %7, %7
  call void @printUnsignedLine(i32 %9)
  br label %dec_label_pc_19ad4

dec_label_pc_19ac5:                               ; preds = %dec_label_pc_19a98
  call void @printLine(ptr @global_var_68bf0)
  br label %dec_label_pc_19ad4

dec_label_pc_19ad4:                               ; preds = %dec_label_pc_19ac5, %dec_label_pc_19aac, %dec_label_pc_19a8a
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_19ae9, label %dec_label_pc_19ae4

dec_label_pc_19ae4:                               ; preds = %dec_label_pc_19ad4
  call void @__stack_chk_fail()
  br label %dec_label_pc_19ae9

dec_label_pc_19ae9:                               ; preds = %dec_label_pc_19ae4, %dec_label_pc_19ad4
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


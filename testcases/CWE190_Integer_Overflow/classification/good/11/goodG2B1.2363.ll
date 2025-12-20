@global_var_6782b = external constant [21 x i8]
@global_var_70d9e = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_1037d:
  %stack_var_-16.0.reg2mem = alloca i32, align 4
  %0 = call i32 @globalReturnsFalse()
  %1 = icmp eq i32 %0, 0
  store i32 3, ptr %stack_var_-16.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_103b6, label %dec_label_pc_1039e

dec_label_pc_1039e:                               ; preds = %dec_label_pc_1037d
  call void @printLine(ptr @global_var_6782b)
  store i32 1, ptr %stack_var_-16.0.reg2mem, align 4
  br label %dec_label_pc_103b6

dec_label_pc_103b6:                               ; preds = %dec_label_pc_1037d, %dec_label_pc_1039e
  %2 = call i32 @globalReturnsTrue()
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_103d7, label %dec_label_pc_103c4

dec_label_pc_103c4:                               ; preds = %dec_label_pc_103b6
  %stack_var_-16.0.reload = load i32, ptr %stack_var_-16.0.reg2mem, align 4
  call void @printUnsignedLine(i32 %stack_var_-16.0.reload)
  br label %dec_label_pc_103d7

dec_label_pc_103d7:                               ; preds = %dec_label_pc_103c4, %dec_label_pc_103b6
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

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_550e7:
  ret i32 1
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_550f6:
  ret i32 0
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr


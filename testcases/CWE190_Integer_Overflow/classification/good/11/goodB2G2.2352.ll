@global_var_67828 = external constant [3 x i8]
@global_var_67840 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_102da:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_1032c, label %dec_label_pc_1030a

dec_label_pc_1030a:                               ; preds = %dec_label_pc_102da
  %3 = load ptr, ptr @global_var_9c070, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_67828, ptr nonnull %stack_var_-24)
  br label %dec_label_pc_1032c

dec_label_pc_1032c:                               ; preds = %dec_label_pc_1030a, %dec_label_pc_102da
  %5 = call i32 @globalReturnsTrue()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_10366, label %dec_label_pc_1033a

dec_label_pc_1033a:                               ; preds = %dec_label_pc_1032c
  %7 = load i32, ptr %stack_var_-24, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %dec_label_pc_10357, label %dec_label_pc_10342

dec_label_pc_10342:                               ; preds = %dec_label_pc_1033a
  %9 = add i32 %7, 1
  call void @printUnsignedLine(i32 %9)
  br label %dec_label_pc_10366

dec_label_pc_10357:                               ; preds = %dec_label_pc_1033a
  call void @printLine(ptr @global_var_67840)
  br label %dec_label_pc_10366

dec_label_pc_10366:                               ; preds = %dec_label_pc_10357, %dec_label_pc_10342, %dec_label_pc_1032c
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_1037b, label %dec_label_pc_10376

dec_label_pc_10376:                               ; preds = %dec_label_pc_10366
  call void @__stack_chk_fail()
  br label %dec_label_pc_1037b

dec_label_pc_1037b:                               ; preds = %dec_label_pc_10376, %dec_label_pc_10366
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

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


@global_var_67640 = external constant [3 x i8]
@global_var_67643 = external constant [21 x i8]
@global_var_67658 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_9c018 = external local_unnamed_addr global i32
@global_var_9c0ac = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_f250:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = load i32, ptr @global_var_9c018, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_f29e, label %dec_label_pc_f27c

dec_label_pc_f27c:                                ; preds = %dec_label_pc_f250
  %3 = load ptr, ptr @global_var_9c070, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_67640, ptr nonnull %stack_var_-24)
  br label %dec_label_pc_f29e

dec_label_pc_f29e:                                ; preds = %dec_label_pc_f27c, %dec_label_pc_f250
  %5 = load i32, ptr @global_var_9c0ac, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_f2b9, label %dec_label_pc_f2a8

dec_label_pc_f2a8:                                ; preds = %dec_label_pc_f29e
  call void @printLine(ptr @global_var_67643)
  br label %dec_label_pc_f2e5

dec_label_pc_f2b9:                                ; preds = %dec_label_pc_f29e
  %7 = load i32, ptr %stack_var_-24, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %dec_label_pc_f2d6, label %dec_label_pc_f2c1

dec_label_pc_f2c1:                                ; preds = %dec_label_pc_f2b9
  %9 = add i32 %7, 1
  call void @printUnsignedLine(i32 %9)
  br label %dec_label_pc_f2e5

dec_label_pc_f2d6:                                ; preds = %dec_label_pc_f2b9
  call void @printLine(ptr @global_var_67658)
  br label %dec_label_pc_f2e5

dec_label_pc_f2e5:                                ; preds = %dec_label_pc_f2d6, %dec_label_pc_f2c1, %dec_label_pc_f2a8
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_f2fa, label %dec_label_pc_f2f5

dec_label_pc_f2f5:                                ; preds = %dec_label_pc_f2e5
  call void @__stack_chk_fail()
  br label %dec_label_pc_f2fa

dec_label_pc_f2fa:                                ; preds = %dec_label_pc_f2f5, %dec_label_pc_f2e5
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


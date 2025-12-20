@global_var_718c8 = external constant [4 x i8]
@global_var_718e8 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr
@global_var_a902c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1a981:
  %.reg2mem = alloca i32, align 4
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = load i32, ptr @global_var_a902c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  br i1 %3, label %dec_label_pc_1a9cf, label %dec_label_pc_1a9ad

dec_label_pc_1a9ad:                               ; preds = %dec_label_pc_1a981
  %4 = load ptr, ptr @global_var_a9080, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_718c8, ptr nonnull %stack_var_-20)
  %.pre = load i32, ptr @global_var_a902c, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  br label %dec_label_pc_1a9cf

dec_label_pc_1a9cf:                               ; preds = %dec_label_pc_1a9ad, %dec_label_pc_1a981
  %.reload = load i32, ptr %.reg2mem, align 4
  %6 = icmp eq i32 %.reload, 5
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_1aa0b, label %dec_label_pc_1a9da

dec_label_pc_1a9da:                               ; preds = %dec_label_pc_1a9cf
  %8 = load i16, ptr %stack_var_-20, align 2
  %9 = icmp eq i16 %8, 32767
  br i1 %9, label %dec_label_pc_1a9fc, label %dec_label_pc_1a9e4

dec_label_pc_1a9e4:                               ; preds = %dec_label_pc_1a9da
  %10 = add i16 %8, 1
  %11 = sext i16 %10 to i32
  call void @printIntLine(i32 %11)
  br label %dec_label_pc_1aa0b

dec_label_pc_1a9fc:                               ; preds = %dec_label_pc_1a9da
  call void @printLine(ptr @global_var_718e8)
  br label %dec_label_pc_1aa0b

dec_label_pc_1aa0b:                               ; preds = %dec_label_pc_1a9fc, %dec_label_pc_1a9e4, %dec_label_pc_1a9cf
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_1aa20, label %dec_label_pc_1aa1b

dec_label_pc_1aa1b:                               ; preds = %dec_label_pc_1aa0b
  call void @__stack_chk_fail()
  br label %dec_label_pc_1aa20

dec_label_pc_1aa20:                               ; preds = %dec_label_pc_1aa1b, %dec_label_pc_1aa0b
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5ddfb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5de1e, label %dec_label_pc_5de12

dec_label_pc_5de12:                               ; preds = %dec_label_pc_5ddfb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5de1e

dec_label_pc_5de1e:                               ; preds = %dec_label_pc_5de12, %dec_label_pc_5ddfb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


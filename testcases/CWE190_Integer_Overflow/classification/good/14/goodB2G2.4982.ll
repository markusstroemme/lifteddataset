@global_var_71b18 = external constant [4 x i8]
@global_var_71b38 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9074 = external local_unnamed_addr global i32
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_1bc1a:
  %.reg2mem = alloca i32, align 4
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = load i32, ptr @global_var_a9074, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  br i1 %3, label %dec_label_pc_1bc68, label %dec_label_pc_1bc46

dec_label_pc_1bc46:                               ; preds = %dec_label_pc_1bc1a
  %4 = load ptr, ptr @global_var_a9080, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_71b18, ptr nonnull %stack_var_-20)
  %.pre = load i32, ptr @global_var_a9074, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  br label %dec_label_pc_1bc68

dec_label_pc_1bc68:                               ; preds = %dec_label_pc_1bc46, %dec_label_pc_1bc1a
  %.reload = load i32, ptr %.reg2mem, align 4
  %6 = icmp eq i32 %.reload, 5
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_1bca4, label %dec_label_pc_1bc73

dec_label_pc_1bc73:                               ; preds = %dec_label_pc_1bc68
  %8 = load i16, ptr %stack_var_-20, align 2
  %9 = icmp eq i16 %8, 32767
  br i1 %9, label %dec_label_pc_1bc95, label %dec_label_pc_1bc7d

dec_label_pc_1bc7d:                               ; preds = %dec_label_pc_1bc73
  %10 = add i16 %8, 1
  %11 = sext i16 %10 to i32
  call void @printIntLine(i32 %11)
  br label %dec_label_pc_1bca4

dec_label_pc_1bc95:                               ; preds = %dec_label_pc_1bc73
  call void @printLine(ptr @global_var_71b38)
  br label %dec_label_pc_1bca4

dec_label_pc_1bca4:                               ; preds = %dec_label_pc_1bc95, %dec_label_pc_1bc7d, %dec_label_pc_1bc68
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_1bcb9, label %dec_label_pc_1bcb4

dec_label_pc_1bcb4:                               ; preds = %dec_label_pc_1bca4
  call void @__stack_chk_fail()
  br label %dec_label_pc_1bcb9

dec_label_pc_1bcb9:                               ; preds = %dec_label_pc_1bcb4, %dec_label_pc_1bca4
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


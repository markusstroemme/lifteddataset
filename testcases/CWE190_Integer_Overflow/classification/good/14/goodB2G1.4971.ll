@global_var_71b18 = external constant [4 x i8]
@global_var_71b1c = external constant [21 x i8]
@global_var_71b38 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9074 = external local_unnamed_addr global i32
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_1bb68:
  %.reg2mem = alloca i32, align 4
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = load i32, ptr @global_var_a9074, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  br i1 %3, label %dec_label_pc_1bbb6, label %dec_label_pc_1bb94

dec_label_pc_1bb94:                               ; preds = %dec_label_pc_1bb68
  %4 = load ptr, ptr @global_var_a9080, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_71b18, ptr nonnull %stack_var_-20)
  %.pr = load i32, ptr @global_var_a9074, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  br label %dec_label_pc_1bbb6

dec_label_pc_1bbb6:                               ; preds = %dec_label_pc_1bb94, %dec_label_pc_1bb68
  %.reload = load i32, ptr %.reg2mem, align 4
  %6 = icmp eq i32 %.reload, 5
  br i1 %6, label %dec_label_pc_1bbd2, label %dec_label_pc_1bbc1

dec_label_pc_1bbc1:                               ; preds = %dec_label_pc_1bbb6
  call void @printLine(ptr @global_var_71b1c)
  br label %dec_label_pc_1bc03

dec_label_pc_1bbd2:                               ; preds = %dec_label_pc_1bbb6
  %7 = load i16, ptr %stack_var_-20, align 2
  %8 = icmp eq i16 %7, 32767
  br i1 %8, label %dec_label_pc_1bbf4, label %dec_label_pc_1bbdc

dec_label_pc_1bbdc:                               ; preds = %dec_label_pc_1bbd2
  %9 = add i16 %7, 1
  %10 = sext i16 %9 to i32
  call void @printIntLine(i32 %10)
  br label %dec_label_pc_1bc03

dec_label_pc_1bbf4:                               ; preds = %dec_label_pc_1bbd2
  call void @printLine(ptr @global_var_71b38)
  br label %dec_label_pc_1bc03

dec_label_pc_1bc03:                               ; preds = %dec_label_pc_1bbf4, %dec_label_pc_1bbdc, %dec_label_pc_1bbc1
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_1bc18, label %dec_label_pc_1bc13

dec_label_pc_1bc13:                               ; preds = %dec_label_pc_1bc03
  call void @__stack_chk_fail()
  br label %dec_label_pc_1bc18

dec_label_pc_1bc18:                               ; preds = %dec_label_pc_1bc13, %dec_label_pc_1bc03
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


@global_var_88ff0 = external constant [4 x i8]
@global_var_89010 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc0a0 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_4f483:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = load i32, ptr @global_var_bc0a0, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_4f513, label %dec_label_pc_4f4d0

dec_label_pc_4f4d0:                               ; preds = %dec_label_pc_4f483
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_88ff0, ptr nonnull %stack_var_-20)
  %.pr = load i32, ptr @global_var_bc0a0, align 4
  %5 = icmp eq i32 %.pr, 0
  br i1 %5, label %dec_label_pc_4f513, label %dec_label_pc_4f4da

dec_label_pc_4f4da:                               ; preds = %dec_label_pc_4f4d0
  %6 = load i16, ptr %stack_var_-20, align 2
  %7 = icmp eq i16 %6, 32767
  br i1 %7, label %dec_label_pc_4f504, label %dec_label_pc_4f4e4

dec_label_pc_4f4e4:                               ; preds = %dec_label_pc_4f4da
  %8 = add i16 %6, 1
  store i16 %8, ptr %stack_var_-20, align 2
  %9 = sext i16 %8 to i32
  call void @printIntLine(i32 %9)
  br label %dec_label_pc_4f513

dec_label_pc_4f504:                               ; preds = %dec_label_pc_4f4da
  call void @printLine(ptr @global_var_89010)
  br label %dec_label_pc_4f513

dec_label_pc_4f513:                               ; preds = %dec_label_pc_4f483, %dec_label_pc_4f504, %dec_label_pc_4f4e4, %dec_label_pc_4f4d0
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_4f528, label %dec_label_pc_4f523

dec_label_pc_4f523:                               ; preds = %dec_label_pc_4f513
  call void @__stack_chk_fail()
  br label %dec_label_pc_4f528

dec_label_pc_4f528:                               ; preds = %dec_label_pc_4f523, %dec_label_pc_4f513
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


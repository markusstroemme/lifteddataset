@global_var_88ff0 = external constant [4 x i8]
@global_var_88ff4 = external constant [21 x i8]
@global_var_89010 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc0a0 = external local_unnamed_addr global i32
@global_var_bc4f8 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_4f3cb:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = load i32, ptr @global_var_bc0a0, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_4f418, label %dec_label_pc_4f3f6

dec_label_pc_4f3f6:                               ; preds = %dec_label_pc_4f3cb
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_88ff0, ptr nonnull %stack_var_-20)
  br label %dec_label_pc_4f418

dec_label_pc_4f418:                               ; preds = %dec_label_pc_4f3f6, %dec_label_pc_4f3cb
  %5 = load i32, ptr @global_var_bc4f8, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_4f433, label %dec_label_pc_4f422

dec_label_pc_4f422:                               ; preds = %dec_label_pc_4f418
  call void @printLine(ptr @global_var_88ff4)
  br label %dec_label_pc_4f46c

dec_label_pc_4f433:                               ; preds = %dec_label_pc_4f418
  %7 = load i16, ptr %stack_var_-20, align 2
  %8 = icmp eq i16 %7, 32767
  br i1 %8, label %dec_label_pc_4f45d, label %dec_label_pc_4f43d

dec_label_pc_4f43d:                               ; preds = %dec_label_pc_4f433
  %9 = add i16 %7, 1
  store i16 %9, ptr %stack_var_-20, align 2
  %10 = sext i16 %9 to i32
  call void @printIntLine(i32 %10)
  br label %dec_label_pc_4f46c

dec_label_pc_4f45d:                               ; preds = %dec_label_pc_4f433
  call void @printLine(ptr @global_var_89010)
  br label %dec_label_pc_4f46c

dec_label_pc_4f46c:                               ; preds = %dec_label_pc_4f45d, %dec_label_pc_4f43d, %dec_label_pc_4f422
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_4f481, label %dec_label_pc_4f47c

dec_label_pc_4f47c:                               ; preds = %dec_label_pc_4f46c
  call void @__stack_chk_fail()
  br label %dec_label_pc_4f481

dec_label_pc_4f481:                               ; preds = %dec_label_pc_4f47c, %dec_label_pc_4f46c
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


@global_var_83470 = external constant [4 x i8]
@global_var_83474 = external constant [21 x i8]
@global_var_83490 = external constant [54 x i8]
@global_var_8c829 = external constant [5 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc0a0 = external local_unnamed_addr global i32
@global_var_bc4f8 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_170ae:
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-32, align 8
  %1 = load i32, ptr @global_var_bc0a0, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_170fd, label %dec_label_pc_170db

dec_label_pc_170db:                               ; preds = %dec_label_pc_170ae
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_83470, ptr nonnull %stack_var_-32)
  br label %dec_label_pc_170fd

dec_label_pc_170fd:                               ; preds = %dec_label_pc_170db, %dec_label_pc_170ae
  %5 = load i32, ptr @global_var_bc4f8, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_17118, label %dec_label_pc_17107

dec_label_pc_17107:                               ; preds = %dec_label_pc_170fd
  call void @printLine(ptr @global_var_83474)
  br label %dec_label_pc_1715c

dec_label_pc_17118:                               ; preds = %dec_label_pc_170fd
  %7 = load i64, ptr %stack_var_-32, align 8
  %8 = icmp eq i64 %7, 9223372036854775807
  br i1 %8, label %dec_label_pc_1714d, label %dec_label_pc_1712b

dec_label_pc_1712b:                               ; preds = %dec_label_pc_17118
  %9 = add i64 %7, 1
  store i64 %9, ptr %stack_var_-32, align 8
  call void @printLongLongLine(i64 %9)
  br label %dec_label_pc_1715c

dec_label_pc_1714d:                               ; preds = %dec_label_pc_17118
  call void @printLine(ptr @global_var_83490)
  br label %dec_label_pc_1715c

dec_label_pc_1715c:                               ; preds = %dec_label_pc_1714d, %dec_label_pc_1712b, %dec_label_pc_17107
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_17171, label %dec_label_pc_1716c

dec_label_pc_1716c:                               ; preds = %dec_label_pc_1715c
  call void @__stack_chk_fail()
  br label %dec_label_pc_17171

dec_label_pc_17171:                               ; preds = %dec_label_pc_1716c, %dec_label_pc_1715c
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

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c829, i32 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


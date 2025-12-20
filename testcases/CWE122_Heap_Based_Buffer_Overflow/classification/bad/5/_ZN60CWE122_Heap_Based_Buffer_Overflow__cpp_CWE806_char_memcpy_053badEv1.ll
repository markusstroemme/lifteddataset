@0 = external global i32
@global_var_5c020 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1439d:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = load i32, ptr @global_var_5c020, align 4
  %3 = icmp eq i32 %2, 0
  %.pre = inttoptr i64 %1 to ptr
  br i1 %3, label %dec_label_pc_143f1, label %dec_label_pc_143d0

dec_label_pc_143d0:                               ; preds = %dec_label_pc_1439d
  %4 = call ptr @memset(ptr %.pre, i32 65, i32 99)
  %5 = add i64 %1, 99
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  br label %dec_label_pc_143f1

dec_label_pc_143f1:                               ; preds = %dec_label_pc_1439d, %dec_label_pc_143d0
  %7 = inttoptr i64 %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %8 = call i32 @strlen(ptr %7)
  %9 = call ptr @memcpy(ptr nonnull %stack_var_-72, ptr %.pre, i32 %8)
  call void @printLine(ptr %7)
  %10 = icmp eq i64 %1, 0
  br i1 %10, label %dec_label_pc_1446c, label %dec_label_pc_14460

dec_label_pc_14460:                               ; preds = %dec_label_pc_143f1
  %11 = and i64 %1, 4294967295
  %12 = inttoptr i64 %11 to ptr
  call void @_ZdaPv(ptr %.pre, ptr %12)
  br label %dec_label_pc_1446c

dec_label_pc_1446c:                               ; preds = %dec_label_pc_14460, %dec_label_pc_143f1
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %14, label %dec_label_pc_14481, label %dec_label_pc_1447c

dec_label_pc_1447c:                               ; preds = %dec_label_pc_1446c
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_14481

dec_label_pc_14481:                               ; preds = %dec_label_pc_1447c, %dec_label_pc_1446c
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3a5bd:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3a5e0, label %dec_label_pc_3a5d4

dec_label_pc_3a5d4:                               ; preds = %dec_label_pc_3a5bd
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3a5e0

dec_label_pc_3a5e0:                               ; preds = %dec_label_pc_3a5d4, %dec_label_pc_3a5bd
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


@global_var_47af0 = external constant [3 x i8]
@0 = external global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_36a97:
  %0 = ptrtoint ptr %arg1 to i64
  %1 = bitcast ptr %arg1 to ptr
  %2 = call ptr @memset(ptr %1, i32 65, i32 49)
  %3 = add i64 %0, 49
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  ret i64 %3
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_36ad1:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-88 = alloca i64, align 8
  %stack_var_-96 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = inttoptr i64 %1 to ptr
  store ptr %2, ptr %stack_var_-96, align 8
  %3 = call i64 @anon0(ptr nonnull %stack_var_-96)
  store i64 0, ptr %stack_var_-88, align 8
  %4 = load ptr, ptr %stack_var_-96, align 8
  %5 = call i32 @strlen(ptr %4)
  %6 = bitcast ptr %stack_var_-88 to ptr
  %7 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr nonnull %6, i32 %5, ptr @global_var_47af0, ptr %4)
  %8 = load ptr, ptr %stack_var_-96, align 8
  call void @printLine(ptr %8)
  %9 = load ptr, ptr %stack_var_-96, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %dec_label_pc_36b8c, label %dec_label_pc_36b80

dec_label_pc_36b80:                               ; preds = %dec_label_pc_36ad1
  %11 = zext i32 %5 to i64
  %12 = bitcast ptr %9 to ptr
  %13 = inttoptr i64 %11 to ptr
  call void @_ZdaPv(ptr %12, ptr %13)
  br label %dec_label_pc_36b8c

dec_label_pc_36b8c:                               ; preds = %dec_label_pc_36b80, %dec_label_pc_36ad1
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_36ba1, label %dec_label_pc_36b9c

dec_label_pc_36b9c:                               ; preds = %dec_label_pc_36b8c
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_36ba1

dec_label_pc_36ba1:                               ; preds = %dec_label_pc_36b9c, %dec_label_pc_36b8c
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

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


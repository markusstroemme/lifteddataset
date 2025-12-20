@global_var_5241c = external constant [21 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2a218:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-128.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsFalse()
  %2 = icmp eq i32 %1, 0
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_2a25a, label %dec_label_pc_2a249

dec_label_pc_2a249:                               ; preds = %dec_label_pc_2a218
  call void @printLine(ptr @global_var_5241c)
  store ptr null, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_2a26f

dec_label_pc_2a25a:                               ; preds = %dec_label_pc_2a218
  %5 = call i64 @_Znam(i64 100)
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  store ptr %6, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_2a26f

dec_label_pc_2a26f:                               ; preds = %dec_label_pc_2a25a, %dec_label_pc_2a249
  %stack_var_-128.0.reload = load ptr, ptr %stack_var_-128.0.reg2mem, align 8
  %7 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %8 = bitcast ptr %stack_var_-120 to ptr
  %9 = call ptr @strncpy(ptr %stack_var_-128.0.reload, ptr nonnull %8, i32 99)
  %10 = ptrtoint ptr %stack_var_-128.0.reload to i64
  %11 = add i64 %10, 99
  %12 = inttoptr i64 %11 to ptr
  store i8 0, ptr %12, align 1
  call void @printLine(ptr %stack_var_-128.0.reload)
  %13 = icmp eq ptr %stack_var_-128.0.reload, null
  br i1 %13, label %dec_label_pc_2a2cb, label %dec_label_pc_2a2bf

dec_label_pc_2a2bf:                               ; preds = %dec_label_pc_2a26f
  %14 = ptrtoint ptr %stack_var_-120 to i64
  %15 = bitcast ptr %stack_var_-128.0.reload to ptr
  %16 = and i64 %14, 4294967288
  %17 = inttoptr i64 %16 to ptr
  call void @_ZdaPv(ptr %15, ptr %17)
  br label %dec_label_pc_2a2cb

dec_label_pc_2a2cb:                               ; preds = %dec_label_pc_2a2bf, %dec_label_pc_2a26f
  %18 = call i64 @__readfsqword(i64 40)
  %19 = icmp eq i64 %0, %18
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %19, label %dec_label_pc_2a2e0, label %dec_label_pc_2a2db

dec_label_pc_2a2db:                               ; preds = %dec_label_pc_2a2cb
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2a2e0

dec_label_pc_2a2e0:                               ; preds = %dec_label_pc_2a2db, %dec_label_pc_2a2cb
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_42e40:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_42e63, label %dec_label_pc_42e57

dec_label_pc_42e57:                               ; preds = %dec_label_pc_42e40
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_42e63

dec_label_pc_42e63:                               ; preds = %dec_label_pc_42e57, %dec_label_pc_42e40
  ret void
}

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_4335f:
  ret i32 0
}

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


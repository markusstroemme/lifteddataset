@0 = external global i32
@global_var_6c02c = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1d06e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-128.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_6c02c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store ptr null, ptr %stack_var_-128.0.reg2mem, align 8
  br i1 %3, label %dec_label_pc_1d0b1, label %dec_label_pc_1d09c

dec_label_pc_1d09c:                               ; preds = %dec_label_pc_1d06e
  %4 = call i64 @_Znam(i64 100)
  %5 = inttoptr i64 %4 to ptr
  store i8 0, ptr %5, align 1
  store ptr %5, ptr %stack_var_-128.0.reg2mem, align 8
  br label %dec_label_pc_1d0b1

dec_label_pc_1d0b1:                               ; preds = %dec_label_pc_1d09c, %dec_label_pc_1d06e
  %stack_var_-128.0.reload = load ptr, ptr %stack_var_-128.0.reg2mem, align 8
  %6 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %7 = bitcast ptr %stack_var_-128.0.reload to ptr
  %8 = call ptr @memmove(ptr %7, ptr nonnull %stack_var_-120, i32 100)
  %9 = ptrtoint ptr %stack_var_-128.0.reload to i64
  %10 = add i64 %9, 99
  %11 = inttoptr i64 %10 to ptr
  store i8 0, ptr %11, align 1
  call void @printLine(ptr %stack_var_-128.0.reload)
  %12 = icmp eq ptr %stack_var_-128.0.reload, null
  br i1 %12, label %dec_label_pc_1d10d, label %dec_label_pc_1d101

dec_label_pc_1d101:                               ; preds = %dec_label_pc_1d0b1
  %13 = ptrtoint ptr %stack_var_-120 to i64
  %14 = and i64 %13, 4294967288
  %15 = inttoptr i64 %14 to ptr
  call void @_ZdaPv(ptr %7, ptr %15)
  br label %dec_label_pc_1d10d

dec_label_pc_1d10d:                               ; preds = %dec_label_pc_1d101, %dec_label_pc_1d0b1
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %17, label %dec_label_pc_1d122, label %dec_label_pc_1d11d

dec_label_pc_1d11d:                               ; preds = %dec_label_pc_1d10d
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1d122

dec_label_pc_1d122:                               ; preds = %dec_label_pc_1d11d, %dec_label_pc_1d10d
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

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


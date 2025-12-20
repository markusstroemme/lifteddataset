@global_var_46cd0 = external constant [21 x i8]
@0 = external global i32
@global_var_5c0d0 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1bfc3:
  %rax.0.reg2mem = alloca i64, align 8
  %.pre-phi.reg2mem = alloca ptr, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = load i32, ptr @global_var_5c0d0, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_1c007, label %dec_label_pc_1bff6

dec_label_pc_1bff6:                               ; preds = %dec_label_pc_1bfc3
  call void @printLine(ptr @global_var_46cd0)
  %.pre = inttoptr i64 %1 to ptr
  store ptr %.pre, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_1c028

dec_label_pc_1c007:                               ; preds = %dec_label_pc_1bfc3
  %4 = inttoptr i64 %1 to ptr
  %5 = call ptr @memset(ptr %4, i32 65, i32 49)
  %6 = add i64 %1, 49
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  store ptr %4, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_1c028

dec_label_pc_1c028:                               ; preds = %dec_label_pc_1c007, %dec_label_pc_1bff6
  %8 = inttoptr i64 %1 to ptr
  %.pre-phi.reload = load ptr, ptr %.pre-phi.reg2mem, align 8
  store i64 0, ptr %stack_var_-72, align 8
  %9 = call i32 @strlen(ptr %8)
  %10 = call ptr @memmove(ptr nonnull %stack_var_-72, ptr %.pre-phi.reload, i32 %9)
  call void @printLine(ptr %8)
  %11 = icmp eq i64 %1, 0
  br i1 %11, label %dec_label_pc_1c0a3, label %dec_label_pc_1c097

dec_label_pc_1c097:                               ; preds = %dec_label_pc_1c028
  %12 = and i64 %1, 4294967295
  %13 = inttoptr i64 %12 to ptr
  call void @_ZdaPv(ptr %.pre-phi.reload, ptr %13)
  br label %dec_label_pc_1c0a3

dec_label_pc_1c0a3:                               ; preds = %dec_label_pc_1c097, %dec_label_pc_1c028
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_1c0b8, label %dec_label_pc_1c0b3

dec_label_pc_1c0b3:                               ; preds = %dec_label_pc_1c0a3
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1c0b8

dec_label_pc_1c0b8:                               ; preds = %dec_label_pc_1c0b3, %dec_label_pc_1c0a3
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

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


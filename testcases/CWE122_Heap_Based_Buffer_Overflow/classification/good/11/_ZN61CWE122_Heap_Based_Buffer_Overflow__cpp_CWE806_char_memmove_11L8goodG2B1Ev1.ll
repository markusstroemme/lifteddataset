@global_var_46d40 = external constant [21 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1d0d5:
  %rax.0.reg2mem = alloca i64, align 8
  %.pre-phi.reg2mem = alloca ptr, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = call i32 @globalReturnsFalse()
  %3 = icmp eq i32 %2, 0
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_1d11d, label %dec_label_pc_1d10c

dec_label_pc_1d10c:                               ; preds = %dec_label_pc_1d0d5
  call void @printLine(ptr @global_var_46d40)
  %.pre = inttoptr i64 %1 to ptr
  store ptr %.pre, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_1d13e

dec_label_pc_1d11d:                               ; preds = %dec_label_pc_1d0d5
  %6 = inttoptr i64 %1 to ptr
  %7 = call ptr @memset(ptr %6, i32 65, i32 49)
  %8 = add i64 %1, 49
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  store ptr %6, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_1d13e

dec_label_pc_1d13e:                               ; preds = %dec_label_pc_1d11d, %dec_label_pc_1d10c
  %10 = inttoptr i64 %1 to ptr
  %.pre-phi.reload = load ptr, ptr %.pre-phi.reg2mem, align 8
  store i64 0, ptr %stack_var_-72, align 8
  %11 = call i32 @strlen(ptr %10)
  %12 = call ptr @memmove(ptr nonnull %stack_var_-72, ptr %.pre-phi.reload, i32 %11)
  call void @printLine(ptr %10)
  %13 = icmp eq i64 %1, 0
  br i1 %13, label %dec_label_pc_1d1b9, label %dec_label_pc_1d1ad

dec_label_pc_1d1ad:                               ; preds = %dec_label_pc_1d13e
  %14 = and i64 %1, 4294967295
  %15 = inttoptr i64 %14 to ptr
  call void @_ZdaPv(ptr %.pre-phi.reload, ptr %15)
  br label %dec_label_pc_1d1b9

dec_label_pc_1d1b9:                               ; preds = %dec_label_pc_1d1ad, %dec_label_pc_1d13e
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %17, label %dec_label_pc_1d1ce, label %dec_label_pc_1d1c9

dec_label_pc_1d1c9:                               ; preds = %dec_label_pc_1d1b9
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1d1ce

dec_label_pc_1d1ce:                               ; preds = %dec_label_pc_1d1c9, %dec_label_pc_1d1b9
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

define i32 @globalReturnsFalse() local_unnamed_addr {
dec_label_pc_3aadc:
  ret i32 0
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


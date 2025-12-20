@0 = external global i32
@global_var_5c02c = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1c45e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i64 @_Znam(i64 100)
  %2 = load i32, ptr @global_var_5c02c, align 4
  %3 = icmp eq i32 %2, 5
  %4 = icmp eq i1 %3, false
  %.pre = inttoptr i64 %1 to ptr
  br i1 %4, label %dec_label_pc_1c4b3, label %dec_label_pc_1c492

dec_label_pc_1c492:                               ; preds = %dec_label_pc_1c45e
  %5 = call ptr @memset(ptr %.pre, i32 65, i32 99)
  %6 = add i64 %1, 99
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  br label %dec_label_pc_1c4b3

dec_label_pc_1c4b3:                               ; preds = %dec_label_pc_1c45e, %dec_label_pc_1c492
  %8 = inttoptr i64 %1 to ptr
  store i64 0, ptr %stack_var_-72, align 8
  %9 = call i32 @strlen(ptr %8)
  %10 = call ptr @memmove(ptr nonnull %stack_var_-72, ptr %.pre, i32 %9)
  call void @printLine(ptr %8)
  %11 = icmp eq i64 %1, 0
  br i1 %11, label %dec_label_pc_1c52e, label %dec_label_pc_1c522

dec_label_pc_1c522:                               ; preds = %dec_label_pc_1c4b3
  %12 = and i64 %1, 4294967295
  %13 = inttoptr i64 %12 to ptr
  call void @_ZdaPv(ptr %.pre, ptr %13)
  br label %dec_label_pc_1c52e

dec_label_pc_1c52e:                               ; preds = %dec_label_pc_1c522, %dec_label_pc_1c4b3
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %15, label %dec_label_pc_1c543, label %dec_label_pc_1c53e

dec_label_pc_1c53e:                               ; preds = %dec_label_pc_1c52e
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1c543

dec_label_pc_1c543:                               ; preds = %dec_label_pc_1c53e, %dec_label_pc_1c52e
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


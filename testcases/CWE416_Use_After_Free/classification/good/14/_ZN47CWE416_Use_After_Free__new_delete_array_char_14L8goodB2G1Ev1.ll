@global_var_4a11e = external constant [21 x i8]
@0 = external global i32
@global_var_630ac = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1b5de:
  %rax.0.reg2mem = alloca i64, align 8
  %.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_630ac, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store i32 %0, ptr %.reg2mem, align 4
  br i1 %2, label %dec_label_pc_1b63f, label %dec_label_pc_1b5fd

dec_label_pc_1b5fd:                               ; preds = %dec_label_pc_1b5de
  %3 = call i64 @_Znam(i64 100)
  %4 = inttoptr i64 %3 to ptr
  %5 = call ptr @memset(ptr %4, i32 65, i32 99)
  %6 = add i64 %3, 99
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  %8 = icmp eq i64 %3, 0
  br i1 %8, label %dec_label_pc_1b63fthread-pre-split, label %dec_label_pc_1b633

dec_label_pc_1b633:                               ; preds = %dec_label_pc_1b5fd
  call void @_ZdaPv(ptr %4, ptr inttoptr (i64 65 to ptr))
  br label %dec_label_pc_1b63fthread-pre-split

dec_label_pc_1b63fthread-pre-split:               ; preds = %dec_label_pc_1b5fd, %dec_label_pc_1b633
  %.pr = load i32, ptr @global_var_630ac, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  br label %dec_label_pc_1b63f

dec_label_pc_1b63f:                               ; preds = %dec_label_pc_1b63fthread-pre-split, %dec_label_pc_1b5de
  %.reload = load i32, ptr %.reg2mem, align 4
  %9 = icmp eq i32 %.reload, 5
  store i64 5, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_1b659, label %dec_label_pc_1b64a

dec_label_pc_1b64a:                               ; preds = %dec_label_pc_1b63f
  call void @printLine(ptr @global_var_4a11e)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1b659

dec_label_pc_1b659:                               ; preds = %dec_label_pc_1b64a, %dec_label_pc_1b63f
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3b807:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3b82a, label %dec_label_pc_3b81e

dec_label_pc_3b81e:                               ; preds = %dec_label_pc_3b807
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3b82a

dec_label_pc_3b82a:                               ; preds = %dec_label_pc_3b81e, %dec_label_pc_3b807
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr


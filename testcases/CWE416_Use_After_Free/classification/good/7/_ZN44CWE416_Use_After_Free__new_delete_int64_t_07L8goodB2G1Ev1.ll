@global_var_4a660 = external constant [21 x i8]
@0 = external global i32
@global_var_63084 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_326f4:
  %rax.0.reg2mem = alloca i64, align 8
  %.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_63084, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store i32 %0, ptr %.reg2mem, align 4
  br i1 %2, label %dec_label_pc_32742, label %dec_label_pc_32713

dec_label_pc_32713:                               ; preds = %dec_label_pc_326f4
  %3 = call i64 @_Znwm(i64 8)
  %4 = inttoptr i64 %3 to ptr
  store i64 5, ptr %4, align 8
  %5 = icmp eq i64 %3, 0
  br i1 %5, label %dec_label_pc_32742thread-pre-split, label %dec_label_pc_32735

dec_label_pc_32735:                               ; preds = %dec_label_pc_32713
  %6 = call i64 @_ZdlPvm(ptr %4, i64 8)
  br label %dec_label_pc_32742thread-pre-split

dec_label_pc_32742thread-pre-split:               ; preds = %dec_label_pc_32713, %dec_label_pc_32735
  %.pr = load i32, ptr @global_var_63084, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  br label %dec_label_pc_32742

dec_label_pc_32742:                               ; preds = %dec_label_pc_32742thread-pre-split, %dec_label_pc_326f4
  %.reload = load i32, ptr %.reg2mem, align 4
  %7 = icmp eq i32 %.reload, 5
  store i64 5, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_3275c, label %dec_label_pc_3274d

dec_label_pc_3274d:                               ; preds = %dec_label_pc_32742
  call void @printLine(ptr @global_var_4a660)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_3275c

dec_label_pc_3275c:                               ; preds = %dec_label_pc_3274d, %dec_label_pc_32742
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

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr


@staticFive = external local_unnamed_addr global i32
@global_var_4a888 = external constant [21 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_39685:
  %rax.0.reg2mem = alloca i64, align 8
  %.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @staticFive, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store i32 %0, ptr %.reg2mem, align 4
  br i1 %2, label %dec_label_pc_396dd, label %dec_label_pc_396a4

dec_label_pc_396a4:                               ; preds = %dec_label_pc_39685
  %3 = call i64 @_Znwm(i64 8)
  %4 = inttoptr i64 %3 to ptr
  store i32 1, ptr %4, align 4
  %5 = add i64 %3, 4
  %6 = inttoptr i64 %5 to ptr
  store i32 2, ptr %6, align 4
  %7 = icmp eq i64 %3, 0
  br i1 %7, label %dec_label_pc_396ddthread-pre-split, label %dec_label_pc_396d0

dec_label_pc_396d0:                               ; preds = %dec_label_pc_396a4
  %8 = inttoptr i64 %3 to ptr
  %9 = call i64 @_ZdlPvm(ptr %8, i64 8)
  br label %dec_label_pc_396ddthread-pre-split

dec_label_pc_396ddthread-pre-split:               ; preds = %dec_label_pc_396a4, %dec_label_pc_396d0
  %.pr = load i32, ptr @staticFive, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  br label %dec_label_pc_396dd

dec_label_pc_396dd:                               ; preds = %dec_label_pc_396ddthread-pre-split, %dec_label_pc_39685
  %.reload = load i32, ptr %.reg2mem, align 4
  %10 = icmp eq i32 %.reload, 5
  store i64 5, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_396f7, label %dec_label_pc_396e8

dec_label_pc_396e8:                               ; preds = %dec_label_pc_396dd
  call void @printLine(ptr @global_var_4a888)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_396f7

dec_label_pc_396f7:                               ; preds = %dec_label_pc_396e8, %dec_label_pc_396dd
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


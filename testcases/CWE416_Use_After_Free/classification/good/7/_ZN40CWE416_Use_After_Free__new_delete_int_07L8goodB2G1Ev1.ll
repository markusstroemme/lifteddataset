@global_var_4a718 = external constant [21 x i8]
@0 = external global i32
@global_var_6308c = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_34bdb:
  %rax.0.reg2mem = alloca i64, align 8
  %.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_6308c, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store i32 %0, ptr %.reg2mem, align 4
  br i1 %2, label %dec_label_pc_34c28, label %dec_label_pc_34bfa

dec_label_pc_34bfa:                               ; preds = %dec_label_pc_34bdb
  %3 = call i64 @_Znwm(i64 4)
  %4 = inttoptr i64 %3 to ptr
  store i32 5, ptr %4, align 4
  %5 = icmp eq i64 %3, 0
  br i1 %5, label %dec_label_pc_34c28thread-pre-split, label %dec_label_pc_34c1b

dec_label_pc_34c1b:                               ; preds = %dec_label_pc_34bfa
  %6 = inttoptr i64 %3 to ptr
  %7 = call i64 @_ZdlPvm(ptr %6, i64 4)
  br label %dec_label_pc_34c28thread-pre-split

dec_label_pc_34c28thread-pre-split:               ; preds = %dec_label_pc_34bfa, %dec_label_pc_34c1b
  %.pr = load i32, ptr @global_var_6308c, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  br label %dec_label_pc_34c28

dec_label_pc_34c28:                               ; preds = %dec_label_pc_34c28thread-pre-split, %dec_label_pc_34bdb
  %.reload = load i32, ptr %.reg2mem, align 4
  %8 = icmp eq i32 %.reload, 5
  store i64 5, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_34c42, label %dec_label_pc_34c33

dec_label_pc_34c33:                               ; preds = %dec_label_pc_34c28
  call void @printLine(ptr @global_var_4a718)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_34c42

dec_label_pc_34c42:                               ; preds = %dec_label_pc_34c33, %dec_label_pc_34c28
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


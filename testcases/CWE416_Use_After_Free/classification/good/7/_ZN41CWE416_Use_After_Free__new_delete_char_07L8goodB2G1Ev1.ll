@global_var_4a4f0 = external constant [21 x i8]
@0 = external global i32
@global_var_63074 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2da08:
  %rax.0.reg2mem = alloca i64, align 8
  %.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_63074, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  store i32 %0, ptr %.reg2mem, align 4
  br i1 %2, label %dec_label_pc_2da52, label %dec_label_pc_2da27

dec_label_pc_2da27:                               ; preds = %dec_label_pc_2da08
  %3 = call i64 @_Znwm(i64 1)
  %4 = inttoptr i64 %3 to ptr
  store i8 65, ptr %4, align 1
  %5 = icmp eq i64 %3, 0
  br i1 %5, label %dec_label_pc_2da52thread-pre-split, label %dec_label_pc_2da45

dec_label_pc_2da45:                               ; preds = %dec_label_pc_2da27
  %6 = inttoptr i64 %3 to ptr
  %7 = call i64 @_ZdlPvm(ptr %6, i64 1)
  br label %dec_label_pc_2da52thread-pre-split

dec_label_pc_2da52thread-pre-split:               ; preds = %dec_label_pc_2da27, %dec_label_pc_2da45
  %.pr = load i32, ptr @global_var_63074, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  br label %dec_label_pc_2da52

dec_label_pc_2da52:                               ; preds = %dec_label_pc_2da52thread-pre-split, %dec_label_pc_2da08
  %.reload = load i32, ptr %.reg2mem, align 4
  %8 = icmp eq i32 %.reload, 5
  store i64 5, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_2da6c, label %dec_label_pc_2da5d

dec_label_pc_2da5d:                               ; preds = %dec_label_pc_2da52
  call void @printLine(ptr @global_var_4a4f0)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2da6c

dec_label_pc_2da6c:                               ; preds = %dec_label_pc_2da5d, %dec_label_pc_2da52
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


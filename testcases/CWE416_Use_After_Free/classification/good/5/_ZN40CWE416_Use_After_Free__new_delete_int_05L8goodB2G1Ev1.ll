@global_var_4a6fc = external constant [21 x i8]
@0 = external global i32
@global_var_63088 = external local_unnamed_addr global i32
@global_var_630f0 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_34879:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_63088, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_348c5, label %dec_label_pc_34897

dec_label_pc_34897:                               ; preds = %dec_label_pc_34879
  %2 = call i64 @_Znwm(i64 4)
  %3 = inttoptr i64 %2 to ptr
  store i32 5, ptr %3, align 4
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %dec_label_pc_348c5, label %dec_label_pc_348b8

dec_label_pc_348b8:                               ; preds = %dec_label_pc_34897
  %5 = inttoptr i64 %2 to ptr
  %6 = call i64 @_ZdlPvm(ptr %5, i64 4)
  br label %dec_label_pc_348c5

dec_label_pc_348c5:                               ; preds = %dec_label_pc_348b8, %dec_label_pc_34897, %dec_label_pc_34879
  %7 = load i32, ptr @global_var_630f0, align 4
  %8 = icmp eq i32 %7, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_348de, label %dec_label_pc_348cf

dec_label_pc_348cf:                               ; preds = %dec_label_pc_348c5
  call void @printLine(ptr @global_var_4a6fc)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_348de

dec_label_pc_348de:                               ; preds = %dec_label_pc_348cf, %dec_label_pc_348c5
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


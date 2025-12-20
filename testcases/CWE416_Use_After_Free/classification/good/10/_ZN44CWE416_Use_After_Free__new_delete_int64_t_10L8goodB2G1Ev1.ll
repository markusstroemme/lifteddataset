@global_var_4a69f = external constant [21 x i8]
@0 = external global i32
@global_var_630a8 = external local_unnamed_addr global i32
@global_var_63100 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_32d2c:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_630a8, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_32d79, label %dec_label_pc_32d4a

dec_label_pc_32d4a:                               ; preds = %dec_label_pc_32d2c
  %2 = call i64 @_Znwm(i64 8)
  %3 = inttoptr i64 %2 to ptr
  store i64 5, ptr %3, align 8
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %dec_label_pc_32d79, label %dec_label_pc_32d6c

dec_label_pc_32d6c:                               ; preds = %dec_label_pc_32d4a
  %5 = call i64 @_ZdlPvm(ptr %3, i64 8)
  br label %dec_label_pc_32d79

dec_label_pc_32d79:                               ; preds = %dec_label_pc_32d6c, %dec_label_pc_32d4a, %dec_label_pc_32d2c
  %6 = load i32, ptr @global_var_63100, align 4
  %7 = icmp eq i32 %6, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_32d92, label %dec_label_pc_32d83

dec_label_pc_32d83:                               ; preds = %dec_label_pc_32d79
  call void @printLine(ptr @global_var_4a69f)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_32d92

dec_label_pc_32d92:                               ; preds = %dec_label_pc_32d83, %dec_label_pc_32d79
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


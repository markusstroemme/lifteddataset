@global_var_4a52f = external constant [21 x i8]
@0 = external global i32
@global_var_630a8 = external local_unnamed_addr global i32
@global_var_63100 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2e016:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_630a8, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_2e05f, label %dec_label_pc_2e034

dec_label_pc_2e034:                               ; preds = %dec_label_pc_2e016
  %2 = call i64 @_Znwm(i64 1)
  %3 = inttoptr i64 %2 to ptr
  store i8 65, ptr %3, align 1
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %dec_label_pc_2e05f, label %dec_label_pc_2e052

dec_label_pc_2e052:                               ; preds = %dec_label_pc_2e034
  %5 = inttoptr i64 %2 to ptr
  %6 = call i64 @_ZdlPvm(ptr %5, i64 1)
  br label %dec_label_pc_2e05f

dec_label_pc_2e05f:                               ; preds = %dec_label_pc_2e052, %dec_label_pc_2e034, %dec_label_pc_2e016
  %7 = load i32, ptr @global_var_63100, align 4
  %8 = icmp eq i32 %7, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_2e078, label %dec_label_pc_2e069

dec_label_pc_2e069:                               ; preds = %dec_label_pc_2e05f
  call void @printLine(ptr @global_var_4a52f)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2e078

dec_label_pc_2e078:                               ; preds = %dec_label_pc_2e069, %dec_label_pc_2e05f
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


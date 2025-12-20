@global_var_4a58c = external constant [21 x i8]
@0 = external global i32
@global_var_63078 = external local_unnamed_addr global i32
@global_var_630e8 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2fba6:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_63078, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_2fbfd, label %dec_label_pc_2fbc4

dec_label_pc_2fbc4:                               ; preds = %dec_label_pc_2fba6
  %2 = call i64 @_Znwm(i64 8)
  %3 = inttoptr i64 %2 to ptr
  store i32 1, ptr %3, align 4
  %4 = add i64 %2, 4
  %5 = inttoptr i64 %4 to ptr
  store i32 2, ptr %5, align 4
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %dec_label_pc_2fbfd, label %dec_label_pc_2fbf0

dec_label_pc_2fbf0:                               ; preds = %dec_label_pc_2fbc4
  %7 = inttoptr i64 %2 to ptr
  %8 = call i64 @_ZdlPvm(ptr %7, i64 8)
  br label %dec_label_pc_2fbfd

dec_label_pc_2fbfd:                               ; preds = %dec_label_pc_2fbf0, %dec_label_pc_2fbc4, %dec_label_pc_2fba6
  %9 = load i32, ptr @global_var_630e8, align 4
  %10 = icmp eq i32 %9, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %10, label %dec_label_pc_2fc16, label %dec_label_pc_2fc07

dec_label_pc_2fc07:                               ; preds = %dec_label_pc_2fbfd
  call void @printLine(ptr @global_var_4a58c)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2fc16

dec_label_pc_2fc16:                               ; preds = %dec_label_pc_2fc07, %dec_label_pc_2fbfd
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


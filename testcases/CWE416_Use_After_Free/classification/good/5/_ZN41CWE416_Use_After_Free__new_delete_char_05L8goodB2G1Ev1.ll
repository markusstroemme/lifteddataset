@global_var_4a4d4 = external constant [21 x i8]
@0 = external global i32
@global_var_63070 = external local_unnamed_addr global i32
@global_var_630e4 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2d6ac:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_63070, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_2d6f5, label %dec_label_pc_2d6ca

dec_label_pc_2d6ca:                               ; preds = %dec_label_pc_2d6ac
  %2 = call i64 @_Znwm(i64 1)
  %3 = inttoptr i64 %2 to ptr
  store i8 65, ptr %3, align 1
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %dec_label_pc_2d6f5, label %dec_label_pc_2d6e8

dec_label_pc_2d6e8:                               ; preds = %dec_label_pc_2d6ca
  %5 = inttoptr i64 %2 to ptr
  %6 = call i64 @_ZdlPvm(ptr %5, i64 1)
  br label %dec_label_pc_2d6f5

dec_label_pc_2d6f5:                               ; preds = %dec_label_pc_2d6e8, %dec_label_pc_2d6ca, %dec_label_pc_2d6ac
  %7 = load i32, ptr @global_var_630e4, align 4
  %8 = icmp eq i32 %7, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_2d70e, label %dec_label_pc_2d6ff

dec_label_pc_2d6ff:                               ; preds = %dec_label_pc_2d6f5
  call void @printLine(ptr @global_var_4a4d4)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2d70e

dec_label_pc_2d70e:                               ; preds = %dec_label_pc_2d6ff, %dec_label_pc_2d6f5
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


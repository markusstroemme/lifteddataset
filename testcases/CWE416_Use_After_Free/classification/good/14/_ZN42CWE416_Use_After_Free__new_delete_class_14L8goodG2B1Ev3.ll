@global_var_4a626 = external constant [21 x i8]
@global_var_4a944 = external constant [4 x i8]
@0 = external global i32
@global_var_630ac = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_30f8e:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_630ac, align 4
  %1 = icmp eq i32 %0, 5
  br i1 %1, label %dec_label_pc_30fbe, label %dec_label_pc_30fad

dec_label_pc_30fad:                               ; preds = %dec_label_pc_30f8e
  call void @printLine(ptr @global_var_4a626)
  store ptr null, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_30fe1

dec_label_pc_30fbe:                               ; preds = %dec_label_pc_30f8e
  %2 = call i64 @_Znwm(i64 8)
  %3 = inttoptr i64 %2 to ptr
  store i32 1, ptr %3, align 4
  %4 = add i64 %2, 4
  %5 = inttoptr i64 %4 to ptr
  store i32 2, ptr %5, align 4
  store ptr %3, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_30fe1

dec_label_pc_30fe1:                               ; preds = %dec_label_pc_30fbe, %dec_label_pc_30fad
  %6 = load i32, ptr @global_var_630ac, align 4
  %7 = zext i32 %6 to i64
  %8 = icmp eq i32 %6, 5
  %9 = icmp eq i1 %8, false
  store i64 %7, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_30ff9, label %dec_label_pc_30fec

dec_label_pc_30fec:                               ; preds = %dec_label_pc_30fe1
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  %10 = load i32, ptr %stack_var_-16.0.reload, align 4
  call void @printIntLine(i32 %10)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_30ff9

dec_label_pc_30ff9:                               ; preds = %dec_label_pc_30fec, %dec_label_pc_30fe1
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3b862:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a944, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr


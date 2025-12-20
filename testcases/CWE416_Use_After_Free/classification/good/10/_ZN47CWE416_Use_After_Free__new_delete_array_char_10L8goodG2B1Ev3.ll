@global_var_4a0df = external constant [21 x i8]
@0 = external global i32
@global_var_630a8 = external local_unnamed_addr global i32
@global_var_63100 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1ad65:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_63100, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_1ad94, label %dec_label_pc_1ad83

dec_label_pc_1ad83:                               ; preds = %dec_label_pc_1ad65
  call void @printLine(ptr @global_var_4a0df)
  store ptr null, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_1adc3

dec_label_pc_1ad94:                               ; preds = %dec_label_pc_1ad65
  %2 = call i64 @_Znam(i64 100)
  %3 = inttoptr i64 %2 to ptr
  %4 = inttoptr i64 %2 to ptr
  %5 = call ptr @memset(ptr %4, i32 65, i32 99)
  %6 = add i64 %2, 99
  %7 = inttoptr i64 %6 to ptr
  store i8 0, ptr %7, align 1
  store ptr %3, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_1adc3

dec_label_pc_1adc3:                               ; preds = %dec_label_pc_1ad94, %dec_label_pc_1ad83
  %8 = load i32, ptr @global_var_630a8, align 4
  %9 = icmp eq i32 %8, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_1add9, label %dec_label_pc_1adcd

dec_label_pc_1adcd:                               ; preds = %dec_label_pc_1adc3
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  call void @printLine(ptr %stack_var_-16.0.reload)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_1add9

dec_label_pc_1add9:                               ; preds = %dec_label_pc_1adcd, %dec_label_pc_1adc3
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

declare i64 @_Znam(i64) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr


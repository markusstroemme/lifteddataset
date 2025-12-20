@global_var_5f063 = external constant [21 x i8]
@global_var_78064 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_34104:
  %stack_var_-48.0.reg2mem = alloca ptr, align 8
  %stack_var_-27 = alloca i64, align 8
  %stack_var_-38 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_78064, align 4
  %2 = icmp eq i32 %1, 5
  br i1 %2, label %dec_label_pc_3413b, label %dec_label_pc_3412a

dec_label_pc_3412a:                               ; preds = %dec_label_pc_34104
  call void @printLine(ptr @global_var_5f063)
  br label %dec_label_pc_3414a

dec_label_pc_3413b:                               ; preds = %dec_label_pc_34104
  %3 = bitcast ptr %stack_var_-38 to ptr
  store i8 0, ptr %3, align 8
  store ptr %3, ptr %stack_var_-48.0.reg2mem, align 8
  br label %dec_label_pc_3414a

dec_label_pc_3414a:                               ; preds = %dec_label_pc_3413b, %dec_label_pc_3412a
  %stack_var_-48.0.reload = load ptr, ptr %stack_var_-48.0.reg2mem, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %4 = bitcast ptr %stack_var_-27 to ptr
  %5 = call i32 @strlen(ptr nonnull %4)
  %6 = add i32 %5, 1
  %7 = bitcast ptr %stack_var_-48.0.reload to ptr
  %8 = call ptr @memcpy(ptr %7, ptr nonnull %stack_var_-27, i32 %6)
  call void @printLine(ptr %stack_var_-48.0.reload)
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_341a6, label %dec_label_pc_341a1

dec_label_pc_341a1:                               ; preds = %dec_label_pc_3414a
  call void @__stack_chk_fail()
  br label %dec_label_pc_341a6

dec_label_pc_341a6:                               ; preds = %dec_label_pc_341a1, %dec_label_pc_3414a
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_4ef73:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_4ef96, label %dec_label_pc_4ef8a

dec_label_pc_4ef8a:                               ; preds = %dec_label_pc_4ef73
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_4ef96

dec_label_pc_4ef96:                               ; preds = %dec_label_pc_4ef8a, %dec_label_pc_4ef73
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


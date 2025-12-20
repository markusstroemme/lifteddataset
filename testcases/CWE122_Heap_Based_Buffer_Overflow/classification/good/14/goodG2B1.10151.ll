@global_var_b905f = external constant [21 x i8]
@global_var_ec074 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_6231b:
  %stack_var_-40.0.reg2mem = alloca ptr, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ec074, align 4
  %2 = icmp eq i32 %1, 5
  br i1 %2, label %dec_label_pc_6235a, label %dec_label_pc_62349

dec_label_pc_62349:                               ; preds = %dec_label_pc_6231b
  call void @printLine(ptr @global_var_b905f)
  store ptr null, ptr %stack_var_-40.0.reg2mem, align 8
  br label %dec_label_pc_62379

dec_label_pc_6235a:                               ; preds = %dec_label_pc_6231b
  %3 = call ptr @malloc(i32 11)
  %4 = bitcast ptr %3 to ptr
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store ptr %4, ptr %stack_var_-40.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_62379, label %dec_label_pc_6236f

dec_label_pc_6236f:                               ; preds = %dec_label_pc_6235a
  call void @exit(i32 -1)
  unreachable

dec_label_pc_62379:                               ; preds = %dec_label_pc_6235a, %dec_label_pc_62349
  %stack_var_-40.0.reload = load ptr, ptr %stack_var_-40.0.reg2mem, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %7 = bitcast ptr %stack_var_-27 to ptr
  %8 = call ptr @strcpy(ptr %stack_var_-40.0.reload, ptr nonnull %7)
  call void @printLine(ptr %stack_var_-40.0.reload)
  %9 = bitcast ptr %stack_var_-40.0.reload to ptr
  call void @free(ptr %9)
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_623d1, label %dec_label_pc_623cc

dec_label_pc_623cc:                               ; preds = %dec_label_pc_62379
  call void @__stack_chk_fail()
  br label %dec_label_pc_623d1

dec_label_pc_623d1:                               ; preds = %dec_label_pc_623cc, %dec_label_pc_62379
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9fe8c:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9feaf, label %dec_label_pc_9fea3

dec_label_pc_9fea3:                               ; preds = %dec_label_pc_9fe8c
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9feaf

dec_label_pc_9feaf:                               ; preds = %dec_label_pc_9fea3, %dec_label_pc_9fe8c
  ret void
}

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


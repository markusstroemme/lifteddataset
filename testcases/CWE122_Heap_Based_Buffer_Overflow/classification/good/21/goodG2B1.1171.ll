@global_var_b4208 = external constant [21 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec094 = external local_unnamed_addr global i32

define ptr @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_c5cb:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_ec094, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_c5f6, label %dec_label_pc_c5e5

dec_label_pc_c5e5:                                ; preds = %dec_label_pc_c5cb
  call void @printLine(ptr @global_var_b4208)
  store ptr %data, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_c615

dec_label_pc_c5f6:                                ; preds = %dec_label_pc_c5cb
  %2 = call ptr @malloc(i32 40)
  %3 = bitcast ptr %2 to ptr
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store ptr %3, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_c615, label %dec_label_pc_c60b

dec_label_pc_c60b:                                ; preds = %dec_label_pc_c5f6
  call void @exit(i32 -1)
  unreachable

dec_label_pc_c615:                                ; preds = %dec_label_pc_c5f6, %dec_label_pc_c5e5
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  ret ptr %stack_var_-16.0.reload
}

define void @anon1() local_unnamed_addr {
dec_label_pc_c61b:
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr @global_var_ec094, align 4
  %1 = call ptr @anon0(ptr null)
  store i64 0, ptr %stack_var_-56, align 8
  %2 = bitcast ptr %1 to ptr
  %3 = call ptr @memmove(ptr %2, ptr nonnull %stack_var_-56, i32 40)
  %4 = load i32, ptr %1, align 4
  call void @printIntLine(i32 %4)
  call void @free(ptr %2)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_c6c6, label %dec_label_pc_c6c1

dec_label_pc_c6c1:                                ; preds = %dec_label_pc_c61b
  call void @__stack_chk_fail()
  br label %dec_label_pc_c6c6

dec_label_pc_c6c6:                                ; preds = %dec_label_pc_c6c1, %dec_label_pc_c61b
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9fee7:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bd318, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


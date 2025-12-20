@global_var_91868 = external constant [54 x i8]
@global_var_95449 = external constant [5 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_5c9b9:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-32, align 8
  %1 = bitcast ptr %stack_var_-32 to ptr
  %2 = call i64 @anon1(ptr nonnull %1)
  %3 = load i64, ptr %stack_var_-32, align 8
  %4 = icmp slt i64 %3, 1
  br i1 %4, label %dec_label_pc_5ca2c, label %dec_label_pc_5c9f1

dec_label_pc_5c9f1:                               ; preds = %dec_label_pc_5c9b9
  %5 = icmp sgt i64 %3, 4611686018427387902
  br i1 %5, label %dec_label_pc_5ca1d, label %dec_label_pc_5ca04

dec_label_pc_5ca04:                               ; preds = %dec_label_pc_5c9f1
  %6 = mul i64 %3, 2
  call void @printLongLongLine(i64 %6)
  br label %dec_label_pc_5ca2c

dec_label_pc_5ca1d:                               ; preds = %dec_label_pc_5c9f1
  call void @printLine(ptr @global_var_91868)
  br label %dec_label_pc_5ca2c

dec_label_pc_5ca2c:                               ; preds = %dec_label_pc_5ca1d, %dec_label_pc_5ca04, %dec_label_pc_5c9b9
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %8, label %dec_label_pc_5ca41, label %dec_label_pc_5ca3c

dec_label_pc_5ca3c:                               ; preds = %dec_label_pc_5ca2c
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5ca41

dec_label_pc_5ca41:                               ; preds = %dec_label_pc_5ca3c, %dec_label_pc_5ca2c
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_5ca92:
  %0 = ptrtoint ptr %arg1 to i64
  %1 = bitcast ptr %arg1 to ptr
  store i64 9223372036854775807, ptr %1, align 8
  ret i64 %0
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_7758b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_775ae, label %dec_label_pc_775a2

dec_label_pc_775a2:                               ; preds = %dec_label_pc_7758b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_775ae

dec_label_pc_775ae:                               ; preds = %dec_label_pc_775a2, %dec_label_pc_7758b
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_776a9:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_95449, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


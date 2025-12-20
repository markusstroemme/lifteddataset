@global_var_77818 = external constant [4 x i8]
@global_var_77820 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@0 = external global i32
@global_var_a9080 = external local_unnamed_addr global ptr

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_4a499:
  %0 = load ptr, ptr @global_var_a9080, align 8
  %1 = call i32 (ptr, ptr, ...) @fscanf(ptr %0, ptr @global_var_77818, ptr %arg1)
  %2 = sext i32 %1 to i64
  ret i64 %2
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_4a4ce:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-20, align 4
  %1 = bitcast ptr %stack_var_-20 to ptr
  %2 = call i64 @anon0(ptr nonnull %1)
  %3 = load i32, ptr %stack_var_-20, align 4
  %4 = trunc i32 %3 to i16
  %5 = icmp eq i16 %4, 32767
  br i1 %5, label %dec_label_pc_4a51d, label %dec_label_pc_4a505

dec_label_pc_4a505:                               ; preds = %dec_label_pc_4a4ce
  %6 = mul i32 %3, 65536
  %sext = add i32 %6, 65536
  %7 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %7)
  br label %dec_label_pc_4a52c

dec_label_pc_4a51d:                               ; preds = %dec_label_pc_4a4ce
  call void @printLine(ptr @global_var_77820)
  br label %dec_label_pc_4a52c

dec_label_pc_4a52c:                               ; preds = %dec_label_pc_4a51d, %dec_label_pc_4a505
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %9, label %dec_label_pc_4a541, label %dec_label_pc_4a53c

dec_label_pc_4a53c:                               ; preds = %dec_label_pc_4a52c
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4a541

dec_label_pc_4a541:                               ; preds = %dec_label_pc_4a53c, %dec_label_pc_4a52c
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5ddfb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5de1e, label %dec_label_pc_5de12

dec_label_pc_5de12:                               ; preds = %dec_label_pc_5ddfb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5de1e

dec_label_pc_5de1e:                               ; preds = %dec_label_pc_5de12, %dec_label_pc_5ddfb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


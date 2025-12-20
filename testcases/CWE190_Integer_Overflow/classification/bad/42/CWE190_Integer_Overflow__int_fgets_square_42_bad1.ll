@global_var_82278 = external constant [16 x i8]
@global_var_8c32c = external constant [4 x i8]
@0 = external global i32
@global_var_b8080 = external local_unnamed_addr global ptr

define i32 @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_1427b:
  %rax.0.reg2mem = alloca i32, align 4
  %stack_var_-44.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_b8080, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_142dc, label %dec_label_pc_142cb

dec_label_pc_142cb:                               ; preds = %dec_label_pc_1427b
  %5 = call i32 @atoi(ptr nonnull %2)
  store i32 %5, ptr %stack_var_-44.0.reg2mem, align 4
  br label %dec_label_pc_142eb

dec_label_pc_142dc:                               ; preds = %dec_label_pc_1427b
  call void @printLine(ptr @global_var_82278)
  store i32 %data, ptr %stack_var_-44.0.reg2mem, align 4
  br label %dec_label_pc_142eb

dec_label_pc_142eb:                               ; preds = %dec_label_pc_142dc, %dec_label_pc_142cb
  %stack_var_-44.0.reload = load i32, ptr %stack_var_-44.0.reg2mem, align 4
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  store i32 %stack_var_-44.0.reload, ptr %rax.0.reg2mem, align 4
  br i1 %7, label %dec_label_pc_14302, label %dec_label_pc_142fd

dec_label_pc_142fd:                               ; preds = %dec_label_pc_142eb
  call void @__stack_chk_fail()
  store i32 ptrtoint (ptr @0 to i32), ptr %rax.0.reg2mem, align 4
  br label %dec_label_pc_14302

dec_label_pc_14302:                               ; preds = %dec_label_pc_142fd, %dec_label_pc_142eb
  %rax.0.reload = load i32, ptr %rax.0.reg2mem, align 4
  ret i32 %rax.0.reload
}

define void @anon0() local_unnamed_addr {
dec_label_pc_14304:
  %0 = call i32 @anon1(i32 0)
  %1 = mul i32 %0, %0
  call void @printIntLine(i32 %1)
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6e78b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6e7ae, label %dec_label_pc_6e7a2

dec_label_pc_6e7a2:                               ; preds = %dec_label_pc_6e78b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6e7ae

dec_label_pc_6e7ae:                               ; preds = %dec_label_pc_6e7a2, %dec_label_pc_6e78b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


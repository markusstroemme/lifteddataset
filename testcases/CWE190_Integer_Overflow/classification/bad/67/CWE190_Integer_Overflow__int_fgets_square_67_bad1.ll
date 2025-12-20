@global_var_825d6 = external constant [16 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_15e90:
  %stack_var_-36.0.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_b8080, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_15ef5, label %dec_label_pc_15ee4

dec_label_pc_15ee4:                               ; preds = %dec_label_pc_15e90
  %5 = call i32 @atoi(ptr nonnull %2)
  %phitmp = zext i32 %5 to i64
  store i64 %phitmp, ptr %stack_var_-36.0.reg2mem, align 8
  br label %dec_label_pc_15f04

dec_label_pc_15ef5:                               ; preds = %dec_label_pc_15e90
  call void @printLine(ptr @global_var_825d6)
  store i64 0, ptr %stack_var_-36.0.reg2mem, align 8
  br label %dec_label_pc_15f04

dec_label_pc_15f04:                               ; preds = %dec_label_pc_15ef5, %dec_label_pc_15ee4
  %stack_var_-36.0.reload = load i64, ptr %stack_var_-36.0.reg2mem, align 8
  call void @anon1(i64 %stack_var_-36.0.reload)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_15f29, label %dec_label_pc_15f24

dec_label_pc_15f24:                               ; preds = %dec_label_pc_15f04
  call void @__stack_chk_fail()
  br label %dec_label_pc_15f29

dec_label_pc_15f29:                               ; preds = %dec_label_pc_15f24, %dec_label_pc_15f04
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_16012:
  %sext = mul i64 %myStruct, 4294967296
  %0 = ashr exact i64 %sext, 32
  %1 = mul nsw i64 %0, %0
  %2 = trunc i64 %1 to i32
  call void @printIntLine(i32 %2)
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


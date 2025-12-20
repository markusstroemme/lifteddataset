@global_var_73616 = external constant [4 x i8]
@global_var_73620 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon1() local_unnamed_addr {
dec_label_pc_28e7c:
  %stack_var_-26 = alloca i64, align 8
  %stack_var_-28 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-28, align 2
  %1 = load ptr, ptr @global_var_a9080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_73616, ptr nonnull %stack_var_-28)
  %3 = bitcast ptr %stack_var_-26 to ptr
  call void @anon0(ptr nonnull %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_28ee8, label %dec_label_pc_28ee3

dec_label_pc_28ee3:                               ; preds = %dec_label_pc_28e7c
  call void @__stack_chk_fail()
  br label %dec_label_pc_28ee8

dec_label_pc_28ee8:                               ; preds = %dec_label_pc_28ee3, %dec_label_pc_28e7c
  ret void
}

define void @anon0(ptr %dataArray) local_unnamed_addr {
dec_label_pc_28f7b:
  %0 = ptrtoint ptr %dataArray to i64
  %1 = add i64 %0, 4
  %2 = inttoptr i64 %1 to ptr
  %3 = load i16, ptr %2, align 2
  %4 = sub i16 0, %3
  %5 = icmp slt i16 %4, 0
  %6 = icmp eq i1 %5, false
  %.v = select i1 %6, i16 %4, i16 %3
  %7 = icmp ult i16 %.v, 182
  br i1 %7, label %dec_label_pc_28fa9, label %dec_label_pc_28fc5

dec_label_pc_28fa9:                               ; preds = %dec_label_pc_28f7b
  %8 = zext i16 %3 to i32
  %narrow = mul i32 %8, 65536
  %sext = mul i32 %narrow, %8
  %9 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %9)
  br label %dec_label_pc_28fd4

dec_label_pc_28fc5:                               ; preds = %dec_label_pc_28f7b
  call void @printLine(ptr @global_var_73620)
  br label %dec_label_pc_28fd4

dec_label_pc_28fd4:                               ; preds = %dec_label_pc_28fc5, %dec_label_pc_28fa9
  ret void
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


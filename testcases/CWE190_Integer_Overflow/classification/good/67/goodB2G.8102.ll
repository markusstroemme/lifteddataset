@global_var_73656 = external constant [4 x i8]
@global_var_73660 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon1() local_unnamed_addr {
dec_label_pc_29072:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = load ptr, ptr @global_var_a9080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_73656, ptr nonnull %stack_var_-20)
  %3 = load i16, ptr %stack_var_-20, align 2
  %4 = zext i16 %3 to i64
  call void @anon0(i64 %4)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_290dd, label %dec_label_pc_290d8

dec_label_pc_290d8:                               ; preds = %dec_label_pc_29072
  call void @__stack_chk_fail()
  br label %dec_label_pc_290dd

dec_label_pc_290dd:                               ; preds = %dec_label_pc_290d8, %dec_label_pc_29072
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_29168:
  %0 = trunc i64 %myStruct to i16
  %1 = sub i16 0, %0
  %2 = icmp slt i16 %1, 0
  %3 = icmp eq i1 %2, false
  %4 = select i1 %3, i16 %1, i16 %0
  %5 = icmp ult i16 %4, 182
  br i1 %5, label %dec_label_pc_29192, label %dec_label_pc_291ae

dec_label_pc_29192:                               ; preds = %dec_label_pc_29168
  %6 = urem i64 %myStruct, 65536
  %7 = mul nuw nsw i64 %6, %6
  %8 = trunc i64 %7 to i32
  %sext2 = mul i32 %8, 65536
  %9 = ashr exact i32 %sext2, 16
  call void @printIntLine(i32 %9)
  br label %dec_label_pc_291bd

dec_label_pc_291ae:                               ; preds = %dec_label_pc_29168
  call void @printLine(ptr @global_var_73660)
  br label %dec_label_pc_291bd

dec_label_pc_291bd:                               ; preds = %dec_label_pc_291ae, %dec_label_pc_29192
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


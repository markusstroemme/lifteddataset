@global_var_812d8 = external constant [16 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_c17e:
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr inttoptr (i64 574340 to ptr), align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  br i1 %3, label %dec_label_pc_c220, label %dec_label_pc_c1ab

dec_label_pc_c1ab:                                ; preds = %dec_label_pc_c17e
  store i64 0, ptr %stack_var_-30, align 8
  %4 = load ptr, ptr @global_var_b8080, align 8
  %5 = bitcast ptr %stack_var_-30 to ptr
  %6 = call ptr @fgets(ptr nonnull %5, i32 14, ptr %4)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %dec_label_pc_c1ee, label %dec_label_pc_c208

dec_label_pc_c1ee:                                ; preds = %dec_label_pc_c1ab
  call void @printLine(ptr @global_var_812d8)
  br label %dec_label_pc_c220

dec_label_pc_c208:                                ; preds = %dec_label_pc_c1ab
  %8 = call i32 @atoi(ptr nonnull %5)
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %dec_label_pc_c220, label %dec_label_pc_c20e

dec_label_pc_c20e:                                ; preds = %dec_label_pc_c208
  %10 = mul i32 %8, 2
  call void @printIntLine(i32 %10)
  br label %dec_label_pc_c220

dec_label_pc_c220:                                ; preds = %dec_label_pc_c1ee, %dec_label_pc_c17e, %dec_label_pc_c20e, %dec_label_pc_c208
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_c235, label %dec_label_pc_c230

dec_label_pc_c230:                                ; preds = %dec_label_pc_c220
  call void @__stack_chk_fail()
  br label %dec_label_pc_c235

dec_label_pc_c235:                                ; preds = %dec_label_pc_c230, %dec_label_pc_c220
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


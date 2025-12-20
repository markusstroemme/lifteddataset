@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_682c8 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_1530f:
  %stack_var_-28.0.reg2mem = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  store i32 2, ptr %stack_var_-28.0.reg2mem, align 4
  br i1 %2, label %dec_label_pc_1536a, label %dec_label_pc_1533f

dec_label_pc_1533f:                               ; preds = %dec_label_pc_1530f
  %3 = load ptr, ptr @global_var_9c070, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_682c8)
  store i32 0, ptr %stack_var_-28.0.reg2mem, align 4
  br label %dec_label_pc_1536a

dec_label_pc_1536a:                               ; preds = %dec_label_pc_1530f, %dec_label_pc_1533f
  %stack_var_-28.0.reload = load i32, ptr %stack_var_-28.0.reg2mem, align 4
  %5 = call i32 @globalReturnsTrueOrFalse()
  %6 = icmp eq i32 %5, 0
  %7 = icmp eq i32 %stack_var_-28.0.reload, 0
  br i1 %6, label %dec_label_pc_15393, label %dec_label_pc_15378

dec_label_pc_15378:                               ; preds = %dec_label_pc_1536a
  br i1 %7, label %dec_label_pc_153c7, label %dec_label_pc_1537f

dec_label_pc_1537f:                               ; preds = %dec_label_pc_15378
  %8 = mul i32 %stack_var_-28.0.reload, 2
  call void @printUnsignedLine(i32 %8)
  br label %dec_label_pc_153c7

dec_label_pc_15393:                               ; preds = %dec_label_pc_1536a
  br i1 %7, label %dec_label_pc_153c7, label %dec_label_pc_153a4

dec_label_pc_153a4:                               ; preds = %dec_label_pc_15393
  %9 = mul i32 %stack_var_-28.0.reload, 2
  call void @printUnsignedLine(i32 %9)
  br label %dec_label_pc_153c7

dec_label_pc_153c7:                               ; preds = %dec_label_pc_153a4, %dec_label_pc_15393, %dec_label_pc_1537f, %dec_label_pc_15378
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_153dc, label %dec_label_pc_153d7

dec_label_pc_153d7:                               ; preds = %dec_label_pc_153c7
  call void @__stack_chk_fail()
  br label %dec_label_pc_153dc

dec_label_pc_153dc:                               ; preds = %dec_label_pc_153d7, %dec_label_pc_153c7
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_55105:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


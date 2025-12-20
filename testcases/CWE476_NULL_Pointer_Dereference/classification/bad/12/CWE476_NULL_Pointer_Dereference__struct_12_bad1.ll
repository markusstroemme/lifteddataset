@global_var_489bc = external constant [13 x i8]
@global_var_4a578 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_18ca5:
  %storemerge.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  store i64 0, ptr %storemerge.reg2mem, align 8
  br i1 %2, label %dec_label_pc_18cd8, label %dec_label_pc_18cee

dec_label_pc_18cd8:                               ; preds = %dec_label_pc_18ca5
  store i32 0, ptr %stack_var_-24, align 4
  %3 = ptrtoint ptr %stack_var_-24 to i64
  store i64 %3, ptr %storemerge.reg2mem, align 8
  br label %dec_label_pc_18cee

dec_label_pc_18cee:                               ; preds = %dec_label_pc_18ca5, %dec_label_pc_18cd8
  %storemerge.reload = load i64, ptr %storemerge.reg2mem, align 8
  %4 = call i32 @globalReturnsTrueOrFalse()
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %dec_label_pc_18d0b, label %dec_label_pc_18cfc

dec_label_pc_18cfc:                               ; preds = %dec_label_pc_18cee
  %6 = inttoptr i64 %storemerge.reload to ptr
  %7 = load i32, ptr %6, align 4
  call void @printIntLine(i32 %7)
  br label %dec_label_pc_18d30

dec_label_pc_18d0b:                               ; preds = %dec_label_pc_18cee
  %8 = icmp eq i64 %storemerge.reload, 0
  br i1 %8, label %dec_label_pc_18d21, label %dec_label_pc_18d12

dec_label_pc_18d12:                               ; preds = %dec_label_pc_18d0b
  %9 = inttoptr i64 %storemerge.reload to ptr
  %10 = load i32, ptr %9, align 4
  call void @printIntLine(i32 %10)
  br label %dec_label_pc_18d30

dec_label_pc_18d21:                               ; preds = %dec_label_pc_18d0b
  call void @printLine(ptr @global_var_489bc)
  br label %dec_label_pc_18d30

dec_label_pc_18d30:                               ; preds = %dec_label_pc_18d21, %dec_label_pc_18d12, %dec_label_pc_18cfc
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_18d45, label %dec_label_pc_18d40

dec_label_pc_18d40:                               ; preds = %dec_label_pc_18d30
  call void @__stack_chk_fail()
  br label %dec_label_pc_18d45

dec_label_pc_18d45:                               ; preds = %dec_label_pc_18d40, %dec_label_pc_18d30
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3cb2f:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3cb52, label %dec_label_pc_3cb46

dec_label_pc_3cb46:                               ; preds = %dec_label_pc_3cb2f
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3cb52

dec_label_pc_3cb52:                               ; preds = %dec_label_pc_3cb46, %dec_label_pc_3cb2f
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3cb8a:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a578, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_3d05d:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


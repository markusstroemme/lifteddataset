@global_var_44d70 = external constant [4 x i8]
@global_var_5b058 = external local_unnamed_addr global i32

define ptr @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_913a:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_5b058, align 4
  %1 = icmp eq i32 %0, 0
  store ptr %data, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_9173, label %dec_label_pc_9154

dec_label_pc_9154:                                ; preds = %dec_label_pc_913a
  %2 = call ptr @malloc(i32 10)
  %3 = bitcast ptr %2 to ptr
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store ptr %3, ptr %stack_var_-16.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_9173, label %dec_label_pc_9169

dec_label_pc_9169:                                ; preds = %dec_label_pc_9154
  call void @exit(i32 -1)
  unreachable

dec_label_pc_9173:                                ; preds = %dec_label_pc_9154, %dec_label_pc_913a
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  ret ptr %stack_var_-16.0.reload
}

define void @anon0() local_unnamed_addr {
dec_label_pc_9179:
  %storemerge1.reg2mem = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i32 1, ptr @global_var_5b058, align 4
  %2 = call ptr @anon1(ptr null)
  %3 = ptrtoint ptr %2 to i64
  %4 = add i64 %0, -48
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_91e8

dec_label_pc_91e8:                                ; preds = %dec_label_pc_9179, %dec_label_pc_91e8
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %5 = ptrtoint ptr %storemerge1.reload to i64
  %6 = mul i64 %5, 4
  %7 = add i64 %6, %3
  %8 = add i64 %4, %6
  %9 = inttoptr i64 %8 to ptr
  %10 = load i32, ptr %9, align 4
  %11 = inttoptr i64 %7 to ptr
  store i32 %10, ptr %11, align 4
  %12 = add i64 %5, 1
  %13 = inttoptr i64 %12 to ptr
  %14 = icmp ugt ptr %13, inttoptr (i64 9 to ptr)
  store ptr %13, ptr %storemerge1.reg2mem, align 8
  br i1 %14, label %dec_label_pc_9211, label %dec_label_pc_91e8

dec_label_pc_9211:                                ; preds = %dec_label_pc_91e8
  %15 = load i32, ptr %2, align 4
  call void @printIntLine(i32 %15)
  %16 = bitcast ptr %2 to ptr
  call void @free(ptr %16)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %1, %17
  br i1 %18, label %dec_label_pc_923f, label %dec_label_pc_923a

dec_label_pc_923a:                                ; preds = %dec_label_pc_9211
  call void @__stack_chk_fail()
  br label %dec_label_pc_923f

dec_label_pc_923f:                                ; preds = %dec_label_pc_923a, %dec_label_pc_9211
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_37b93:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_44d70, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


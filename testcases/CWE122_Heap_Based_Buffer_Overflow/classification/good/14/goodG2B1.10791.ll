@global_var_b916b = external constant [21 x i8]
@global_var_ec074 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_671da:
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-56.0.reg2mem = alloca ptr, align 8
  %stack_var_-27 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ec074, align 4
  %2 = icmp eq i32 %1, 5
  br i1 %2, label %dec_label_pc_67219, label %dec_label_pc_67208

dec_label_pc_67208:                               ; preds = %dec_label_pc_671da
  call void @printLine(ptr @global_var_b916b)
  store ptr null, ptr %stack_var_-56.0.reg2mem, align 8
  br label %dec_label_pc_67238

dec_label_pc_67219:                               ; preds = %dec_label_pc_671da
  %3 = call ptr @malloc(i32 11)
  %4 = bitcast ptr %3 to ptr
  %5 = icmp eq ptr %3, null
  %6 = icmp eq i1 %5, false
  store ptr %4, ptr %stack_var_-56.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_67238, label %dec_label_pc_6722e

dec_label_pc_6722e:                               ; preds = %dec_label_pc_67219
  call void @exit(i32 -1)
  unreachable

dec_label_pc_67238:                               ; preds = %dec_label_pc_67219, %dec_label_pc_67208
  %stack_var_-56.0.reload = load ptr, ptr %stack_var_-56.0.reg2mem, align 8
  store i64 4702111234474983745, ptr %stack_var_-27, align 8
  %7 = bitcast ptr %stack_var_-27 to ptr
  %8 = call i32 @strlen(ptr nonnull %7)
  %9 = sext i32 %8 to i64
  %10 = add nsw i64 %9, 1
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %dec_label_pc_67298, label %dec_label_pc_6726a.lr.ph

dec_label_pc_6726a.lr.ph:                         ; preds = %dec_label_pc_67238
  %12 = ptrtoint ptr %stack_var_-56.0.reload to i64
  %13 = ptrtoint ptr %stack_var_-27 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_6726a

dec_label_pc_6726a:                               ; preds = %dec_label_pc_6726a, %dec_label_pc_6726a.lr.ph
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %14 = add i64 %storemerge2.reload, %12
  %15 = add i64 %storemerge2.reload, %13
  %16 = inttoptr i64 %15 to ptr
  %17 = load i8, ptr %16, align 1
  %18 = inttoptr i64 %14 to ptr
  store i8 %17, ptr %18, align 1
  %19 = add nuw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %19, %10
  store i64 %19, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_67298, label %dec_label_pc_6726a

dec_label_pc_67298:                               ; preds = %dec_label_pc_6726a, %dec_label_pc_67238
  call void @printLine(ptr %stack_var_-56.0.reload)
  %20 = bitcast ptr %stack_var_-56.0.reload to ptr
  call void @free(ptr %20)
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %0, %21
  br i1 %22, label %dec_label_pc_672c5, label %dec_label_pc_672c0

dec_label_pc_672c0:                               ; preds = %dec_label_pc_67298
  call void @__stack_chk_fail()
  br label %dec_label_pc_672c5

dec_label_pc_672c5:                               ; preds = %dec_label_pc_672c0, %dec_label_pc_67298
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9fe8c:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9feaf, label %dec_label_pc_9fea3

dec_label_pc_9fea3:                               ; preds = %dec_label_pc_9fe8c
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9feaf

dec_label_pc_9feaf:                               ; preds = %dec_label_pc_9fea3, %dec_label_pc_9fe8c
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr


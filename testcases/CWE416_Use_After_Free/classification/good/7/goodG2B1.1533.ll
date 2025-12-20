@global_var_49c15 = external constant [21 x i8]
@global_var_4a944 = external constant [4 x i8]
@global_var_63024 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_c63d:
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_63024, align 4
  %1 = icmp eq i32 %0, 5
  br i1 %1, label %dec_label_pc_c66d, label %dec_label_pc_c65c

dec_label_pc_c65c:                                ; preds = %dec_label_pc_c63d
  call void @printLine(ptr @global_var_49c15)
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_c6bb

dec_label_pc_c66d:                                ; preds = %dec_label_pc_c63d
  %2 = call ptr @malloc(i32 400)
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_c6b4.preheader, label %dec_label_pc_c682

dec_label_pc_c6b4.preheader:                      ; preds = %dec_label_pc_c66d
  %5 = bitcast ptr %2 to ptr
  %6 = ptrtoint ptr %2 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_c696

dec_label_pc_c682:                                ; preds = %dec_label_pc_c66d
  call void @exit(i32 -1)
  unreachable

dec_label_pc_c696:                                ; preds = %dec_label_pc_c696, %dec_label_pc_c6b4.preheader
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %7 = mul i64 %storemerge2.reload, 4
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 5, ptr %9, align 4
  %10 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %10, 100
  store i64 %10, ptr %storemerge2.reg2mem, align 8
  store ptr %5, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_c6bb, label %dec_label_pc_c696

dec_label_pc_c6bb:                                ; preds = %dec_label_pc_c696, %dec_label_pc_c65c
  %11 = load i32, ptr @global_var_63024, align 4
  %12 = icmp eq i32 %11, 5
  %13 = icmp eq i1 %12, false
  br i1 %13, label %dec_label_pc_c6d3, label %dec_label_pc_c6c6

dec_label_pc_c6c6:                                ; preds = %dec_label_pc_c6bb
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  %14 = load i32, ptr %stack_var_-24.0.reload, align 4
  call void @printIntLine(i32 %14)
  br label %dec_label_pc_c6d3

dec_label_pc_c6d3:                                ; preds = %dec_label_pc_c6c6, %dec_label_pc_c6bb
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3b807:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3b82a, label %dec_label_pc_3b81e

dec_label_pc_3b81e:                               ; preds = %dec_label_pc_3b807
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3b82a

dec_label_pc_3b82a:                               ; preds = %dec_label_pc_3b81e, %dec_label_pc_3b807
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3b862:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a944, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr


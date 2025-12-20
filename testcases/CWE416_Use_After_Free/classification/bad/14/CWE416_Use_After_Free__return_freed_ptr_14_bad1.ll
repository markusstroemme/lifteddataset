@global_var_4a00f = external constant [8 x i8]
@global_var_630ac = external local_unnamed_addr global i32

define ptr @helperBad.381(ptr %aString) local_unnamed_addr {
dec_label_pc_1772e:
  %storemerge2.reg2mem = alloca ptr, align 8
  %.pre-phi.reg2mem = alloca i64, align 8
  %storemerge3.reg2mem = alloca ptr, align 8
  %0 = icmp eq ptr %aString, null
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br i1 %0, label %dec_label_pc_177ef, label %dec_label_pc_17759

dec_label_pc_17759:                               ; preds = %dec_label_pc_1772e
  %1 = call i32 @strlen(ptr nonnull %aString)
  %2 = add i32 %1, 1
  %3 = call ptr @malloc(i32 %2)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_177c0.preheader, label %dec_label_pc_17784

dec_label_pc_177c0.preheader:                     ; preds = %dec_label_pc_17759
  %6 = sext i32 %1 to i64
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %dec_label_pc_177c0.preheader.dec_label_pc_177ca_crit_edge, label %dec_label_pc_17798.lr.ph

dec_label_pc_177c0.preheader.dec_label_pc_177ca_crit_edge: ; preds = %dec_label_pc_177c0.preheader
  %.pre = ptrtoint ptr %3 to i64
  store i64 %.pre, ptr %.pre-phi.reg2mem, align 8
  br label %dec_label_pc_177ca

dec_label_pc_17798.lr.ph:                         ; preds = %dec_label_pc_177c0.preheader
  %8 = ptrtoint ptr %aString to i64
  %9 = inttoptr i64 %6 to ptr
  %10 = add i64 %6, %8
  %11 = ptrtoint ptr %3 to i64
  store ptr null, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_17798

dec_label_pc_17784:                               ; preds = %dec_label_pc_17759
  call void @exit(i32 -1)
  unreachable

dec_label_pc_17798:                               ; preds = %dec_label_pc_17798.lr.ph, %dec_label_pc_17798
  %storemerge3.reload = load ptr, ptr %storemerge3.reg2mem, align 8
  %12 = ptrtoint ptr %storemerge3.reload to i64
  %13 = sub i64 0, %12
  %14 = sub i64 %13, 1
  %15 = add i64 %10, %14
  %16 = add i64 %12, %11
  %17 = inttoptr i64 %15 to ptr
  %18 = load i8, ptr %17, align 1
  %19 = inttoptr i64 %16 to ptr
  store i8 %18, ptr %19, align 1
  %20 = add i64 %12, 1
  %21 = inttoptr i64 %20 to ptr
  %22 = icmp ult ptr %21, %9
  store ptr %21, ptr %storemerge3.reg2mem, align 8
  store i64 %11, ptr %.pre-phi.reg2mem, align 8
  br i1 %22, label %dec_label_pc_17798, label %dec_label_pc_177ca

dec_label_pc_177ca:                               ; preds = %dec_label_pc_17798, %dec_label_pc_177c0.preheader.dec_label_pc_177ca_crit_edge
  %23 = bitcast ptr %3 to ptr
  %.pre-phi.reload = load i64, ptr %.pre-phi.reg2mem, align 8
  %24 = add i64 %.pre-phi.reload, %6
  %25 = inttoptr i64 %24 to ptr
  store i8 0, ptr %25, align 1
  call void @free(ptr %3)
  store ptr %23, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_177ef

dec_label_pc_177ef:                               ; preds = %dec_label_pc_1772e, %dec_label_pc_177ca
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  ret ptr %storemerge2.reload
}

define void @anon0() local_unnamed_addr {
dec_label_pc_178a8:
  %0 = load i32, ptr @global_var_630ac, align 4
  %1 = icmp eq i32 %0, 5
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_178de, label %dec_label_pc_178bf

dec_label_pc_178bf:                               ; preds = %dec_label_pc_178a8
  %3 = call ptr @helperBad.381(ptr @global_var_4a00f)
  call void @printLine(ptr %3)
  br label %dec_label_pc_178de

dec_label_pc_178de:                               ; preds = %dec_label_pc_178bf, %dec_label_pc_178a8
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

declare i32 @strlen(ptr) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

